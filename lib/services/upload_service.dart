import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:archive/archive_io.dart';
import '../crypto/sv02_codec.dart';
import 'api_client.dart';

class UploadException implements Exception {
  final String message;
  UploadException(this.message);
  @override
  String toString() => message;
}

class UploadResult {
  final String token;
  final String downloadUrl;
  final int ttlSeconds;
  final bool emailSent;
  UploadResult({
    required this.token,
    required this.downloadUrl,
    required this.ttlSeconds,
    required this.emailSent,
  });
}

/// server.js'in streaming upload akisiyla birebir eslesir:
///   POST /upload/init           -> { uploadId }
///   POST /upload/chunk/:id  xN  -> { received, total }   (SIRALI - server zorunlu kiliyor)
///   POST /upload/finalize/:id   -> { token, ttl }
///
/// Anahtar HICBIR ZAMAN sunucuya gonderilmez. Indirme linki tamamen cihazda
/// kurulur (token sunucudan, keyB64 cihazda uretilmis) ve OS paylasim
/// menusuyle iletilir.
class UploadService {
  final Dio _dio = ApiClient.instance.dio;

  /// Duz metni gecici bir .txt dosyasina yazip, ayni sifreli yukleme
  /// akisindan gecirir (web ile birebir ayni: metin -> metin.txt -> upload).
  /// Islem bitince gecici dosya silinir.
  Future<UploadResult> uploadText({
    required String text,
    required String recipientEmail,
    String? extraPassword,
    void Function(int sent, int total)? onProgress,
  }) async {
    final dir = await getTemporaryDirectory();
    final tmp = File('${dir.path}/metin_${DateTime.now().millisecondsSinceEpoch}.txt');
    try {
      await tmp.writeAsString(text);
      return await uploadFile(
        filePath: tmp.path,
        originalName: 'metin.txt',
        recipientEmail: recipientEmail,
        extraPassword: extraPassword,
        onProgress: onProgress,
      );
    } finally {
      if (await tmp.exists()) {
        try {
          await tmp.delete();
        } catch (_) {}
      }
    }
  }

  /// Bir klasoru (icindeki tum dosyalarla, alt klasorler dahil) SIKISTIRMASIZ
  /// bir zip'e toplar ve ayni sifreli yukleme akisindan gecirir. Alici, inen
  /// zip dosyasini kendi cihazinda acar. Islem bitince gecici zip silinir.
  /// (Metin akisiyla ayni desen: klasor -> klasor.zip -> uploadFile.)
  Future<UploadResult> uploadFolder({
    required String folderPath,
    required String recipientEmail,
    String? extraPassword,
    void Function(int sent, int total)? onProgress,
  }) async {
    final dir = Directory(folderPath);
    if (!await dir.exists()) {
      throw UploadException('Klasor bulunamadi.');
    }

    // Klasor adini zip dosya adi olarak kullan (yoksa 'klasor').
    final rawName = folderPath.split(RegExp(r'[\\/]')).where((s) => s.isNotEmpty).toList();
    final folderName = rawName.isNotEmpty ? rawName.last : 'klasor';

    final tmpDir = await getTemporaryDirectory();
    final zipPath = '${tmpDir.path}/${folderName}_${DateTime.now().millisecondsSinceEpoch}.zip';

    try {
      // SIKISTIRMASIZ (store) zip: hizli, telefonu yormaz.
      final encoder = ZipFileEncoder();
      encoder.create(zipPath, level: 0); // level 0 = store, sikistirma yok
      await encoder.addDirectory(dir, includeDirName: true);
      encoder.closeSync();

      final zipFile = File(zipPath);
      final zipSize = await zipFile.length();
      if (zipSize <= 0) {
        throw UploadException('Klasor bos gorunuyor.');
      }

      return await uploadFile(
        filePath: zipPath,
        originalName: '$folderName.zip',
        recipientEmail: recipientEmail,
        extraPassword: extraPassword,
        onProgress: onProgress,
      );
    } finally {
      final zf = File(zipPath);
      if (await zf.exists()) {
        try {
          await zf.delete();
        } catch (_) {}
      }
    }
  }

  Future<UploadResult> uploadFile({
    required String filePath,
    required String originalName,
    required String recipientEmail,
    String? extraPassword,
    void Function(int sent, int total)? onProgress,
  }) async {
    final file = File(filePath);
    final totalSize = await file.length();
    if (totalSize <= 0) {
      throw UploadException('Dosya bos gorunuyor, baska bir dosya secin.');
    }

    final key = Sv02Codec.generateKey();
    final keyB64 = await Sv02Codec.keyToBase64Url(key);

    final uploadId = await _init(
      recipientEmail: recipientEmail,
      originalName: originalName,
    );

    var sent = 0;
    await for (final piece in Sv02Codec.encryptStream(filePath, key)) {
      await _postChunk(uploadId, piece);
      sent += piece.length;
      onProgress?.call(sent, totalSize);
    }

    final fin = await _finalize(uploadId);

    // Ek sifre varsa, web ile birebir ayni sekilde #keyB64|HASH16 ekini uret.
    var pwdSuffix = '';
    if (extraPassword != null && extraPassword.isNotEmpty) {
      pwdSuffix = '|${await Sv02Codec.hashPassword(extraPassword)}';
    }

    final downloadUrl =
        '$_baseUrl/dl/${fin.token}#${Uri.encodeComponent(keyB64)}$pwdSuffix';

    // Web'deki gibi sunucu uzerinden otomatik e-posta gonderimi. Anahtar
    // (keyB64) bu istekte sunucuya gider; sunucu maili atip ANAHTARI SAKLAMAZ.
    // Basarisiz olursa upload yine de gecerli — kullanici 'Linki Paylas' ile
    // manuel iletebilir, bu yuzden hatayi yutuyoruz.
    // server.js isValidKeyB64, base64 padding ('=') bekliyor; uretirken
    // kaldirdigimiz padding'i burada geri ekliyoruz.
    final padded = keyB64 + ('=' * ((4 - keyB64.length % 4) % 4));
    final emailSent = await _sendLink(
      token: fin.token,
      keyB64WithPwd: '$padded$pwdSuffix',
      recipientEmail: recipientEmail,
      originalName: originalName,
    );

    return UploadResult(
      token: fin.token,
      downloadUrl: downloadUrl,
      ttlSeconds: fin.ttl,
      emailSent: emailSent,
    );
  }

  /// server.js POST /send-link ile birebir: { token, keyB64, recipientEmail,
  /// originalName }. keyB64 alani, ek sifre varsa 'KEY|HASH16' formatinda
  /// gonderilir (web de boyle yapiyor). Basarili olursa true doner.
  Future<bool> _sendLink({
    required String token,
    required String keyB64WithPwd,
    required String recipientEmail,
    required String originalName,
  }) async {
    try {
      final res = await _dio.post('/send-link', data: {
        'token': token,
        'keyB64': keyB64WithPwd,
        'recipientEmail': recipientEmail,
        'originalName': originalName,
      });
      return res.statusCode == 200;
    } catch (_) {
      return false;
    }
  }

  String get _baseUrl {
    final b = _dio.options.baseUrl;
    return b.endsWith('/') ? b.substring(0, b.length - 1) : b;
  }

  Future<String> _init({
    required String recipientEmail,
    required String originalName,
  }) async {
    try {
      final res = await _dio.post('/upload/init', data: {
        'recipientEmail': recipientEmail,
        'originalName': originalName,
      });
      if (res.statusCode == 200 && res.data['uploadId'] != null) {
        return res.data['uploadId'] as String;
      }
      throw UploadException(_serverError(res, 'Yukleme baslatilamadi.'));
    } on DioException catch (e) {
      throw UploadException(_networkError(e));
    }
  }

  Future<void> _postChunk(String uploadId, List<int> bytes) async {
    try {
      final res = await _dio.post(
        '/upload/chunk/$uploadId',
        data: bytes,
        options: Options(contentType: 'application/octet-stream'),
      );
      if (res.statusCode != 200) {
        throw UploadException(_serverError(res, 'Parca yuklenemedi.'));
      }
    } on DioException catch (e) {
      throw UploadException(_networkError(e));
    }
  }

  Future<_FinalizeResult> _finalize(String uploadId) async {
    try {
      final res = await _dio.post('/upload/finalize/$uploadId');
      if (res.statusCode == 200 && res.data['token'] != null) {
        return _FinalizeResult(
          token: res.data['token'] as String,
          ttl: (res.data['ttl'] as num).toInt(),
        );
      }
      throw UploadException(_serverError(res, 'Yukleme tamamlanamadi.'));
    } on DioException catch (e) {
      throw UploadException(_networkError(e));
    }
  }

  String _serverError(Response res, String fallback) {
    final data = res.data;
    if (data is Map && data['error'] != null) return data['error'].toString();
    return fallback;
  }

  String _networkError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Sunucuya baglanilamadi (zaman asimi). Internet baglantinizi kontrol edin.';
      case DioExceptionType.connectionError:
        return 'Baglanti kurulamadi. Internet baglantinizi kontrol edin.';
      default:
        return 'Beklenmeyen bir hata olustu: ${e.message}';
    }
  }
}

class _FinalizeResult {
  final String token;
  final int ttl;
  _FinalizeResult({required this.token, required this.ttl});
}



