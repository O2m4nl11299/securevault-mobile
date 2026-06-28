import 'dart:convert';
import 'dart:io';
import 'package:cryptography/cryptography.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import '../crypto/sv02_codec.dart';
import '../l10n/app_localizations.dart';
import 'api_client.dart';

class DownloadException implements Exception {
  final String message;
  DownloadException(this.message);
  @override
  String toString() => message;
}

class ParsedLink {
  final String token;
  final String keyB64;
  final String? pwdHash; // null ise ek şifre yok
  ParsedLink({required this.token, required this.keyB64, this.pwdHash});
}

class DownloadResult {
  final String filePath;
  final String fileName;
  final int fileSizeBytes;
  DownloadResult({
    required this.filePath,
    required this.fileName,
    required this.fileSizeBytes,
  });
}

/// GET /api/dl/:token — server.js'in döndürdüğü ham SV02 baytını stream
/// olarak alır, Sv02Codec.decryptStream ile TEK GEÇİŞTE çözer (network
/// stream'leri tek seferlik okunabilir — iki kez dinlemeye çalışmak hataya
/// yol açar), uygulamanın özel belge klasörüne kaydeder. Anahtar her zaman
/// URL fragment'inden gelir, sunucuya hiçbir zaman gönderilmez.
///
/// NOT — bilinçli kapsam sınırı: linkte `|pwdHash` (ek şifre katmanı) varsa
/// bu sürüm desteklemiyor. app.js'teki hashPassword algoritması bu oturumda
/// doğrulanmadı; yanlış tahminle "çalışıyor görünen ama aslında kırık" bir
/// kontrol eklemek yerine, böyle linkleri açıkça reddedip kullanıcıyı
/// tarayıcıya yönlendiriyoruz.
class DownloadService {
  final Dio _dio = ApiClient.instance.dio;

  static ParsedLink? parseLink(String input) {
    final trimmed = input.trim();
    final uri = Uri.tryParse(trimmed);
    if (uri == null) return null;

    final match = RegExp(r'/dl/([0-9a-fA-F-]{36})$').firstMatch(uri.path);
    if (match == null) return null;
    final token = match.group(1)!;

    if (uri.fragment.isEmpty) return null;
    String decoded;
    try {
      decoded = Uri.decodeComponent(uri.fragment);
    } catch (_) {
      decoded = uri.fragment;
    }
    final parts = decoded.split('|');
    final keyB64 = parts[0];
    if (keyB64.isEmpty) return null;

    return ParsedLink(
      token: token,
      keyB64: keyB64,
      pwdHash: parts.length > 1 ? parts[1] : null,
    );
  }

  Future<DownloadResult> downloadAndDecrypt({
    required AppLocalizations l,
    required String token,
    required String keyB64,
    void Function(int received, int total)? onProgress,
  }) async {
    SecretKey key;
    try {
      key = Sv02Codec.keyFromBase64Url(keyB64);
    } catch (_) {
      throw DownloadException(l.dlsvcInvalidKey);
    }

    final Response<ResponseBody> res;
    try {
      res = await _dio.get<ResponseBody>(
        '/api/dl/$token',
        options: Options(responseType: ResponseType.stream),
      );
    } on DioException catch (e) {
      throw DownloadException(_dioErrorMessage(l, e));
    }

    if (res.statusCode != 200) {
      throw DownloadException(await _readJsonError(l, res));
    }

    final fileName = _parseFilename(l, res.headers.value('content-disposition'));
    final totalLen =
        int.tryParse(res.headers.value('content-length') ?? '') ?? 0;

    final dir = await getApplicationDocumentsDirectory();
    final outPath = '${dir.path}/$fileName';
    final outFile = File(outPath);
    final sink = outFile.openWrite();

    // Stream'i TEK GEÇİŞTE okuyoruz: gelen her ham parçada progress'i
    // güncelliyoruz, aynı parça decryptStream'e iletiliyor.
    var received = 0;
    final taggedStream = res.data!.stream.map((chunk) {
      received += chunk.length;
      onProgress?.call(received, totalLen);
      return chunk;
    });

    try {
      await for (final clear in Sv02Codec.decryptStream(taggedStream, key)) {
        sink.add(clear);
      }
    } catch (e) {
      await sink.close();
      try {
        await outFile.delete();
      } catch (_) {}
      throw DownloadException(l.dlsvcDecryptFailed);
    }
    await sink.flush();
    await sink.close();

    final fileSizeBytes = await outFile.length();
    return DownloadResult(
      filePath: outPath,
      fileName: fileName,
      fileSizeBytes: fileSizeBytes,
    );
  }

  String _parseFilename(AppLocalizations l, String? contentDisposition) {
    if (contentDisposition == null) return l.dlsvcDefaultFile;
    final star =
        RegExp(r"filename\*=UTF-8''([^;\s]+)").firstMatch(contentDisposition);
    if (star != null) {
      return Uri.decodeComponent(star.group(1)!)
          .replaceAll(RegExp(r'\.enc$'), '');
    }
    final plain =
        RegExp(r'filename="?([^";\s]+)"?').firstMatch(contentDisposition);
    if (plain != null) {
      return plain.group(1)!.replaceAll(RegExp(r'\.enc$'), '');
    }
    return l.dlsvcDefaultFile;
  }

  Future<String> _readJsonError(AppLocalizations l, Response<ResponseBody> res) async {
    try {
      final bytes = await res.data!.stream
          .fold<List<int>>(<int>[], (acc, c) => acc..addAll(c));
      final text = utf8.decode(bytes);
      final json = jsonDecode(text);
      if (json is Map && json['error'] != null) return json['error'].toString();
    } catch (_) {}
    if (res.statusCode == 410) {
      return l.dlsvcLinkExpired;
    }
    return l.dlsvcDownloadFailed(res.statusCode.toString());
  }

  String _dioErrorMessage(AppLocalizations l, DioException e) {
    if (e.response?.statusCode == 410) {
      return l.dlsvcLinkExpired;
    }
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return l.dlsvcTimeout;
      case DioExceptionType.connectionError:
        return l.dlsvcConnError;
      default:
        return l.dlsvcUnexpected(e.message ?? '');
    }
  }
}
