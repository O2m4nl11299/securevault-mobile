import 'dart:io';
import 'package:dio/dio.dart';
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
  UploadResult({
    required this.token,
    required this.downloadUrl,
    required this.ttlSeconds,
  });
}

/// server.js'in streaming upload akışıyla birebir eşleşir:
///   POST /upload/init           -> { uploadId }
///   POST /upload/chunk/:id  xN  -> { received, total }   (SIRALI — server zorunlu kılıyor)
///   POST /upload/finalize/:id   -> { token, ttl }
///
/// Anahtar HİÇBİR ZAMAN sunucuya gönderilmez. İndirme linki tamamen cihazda
/// kurulur (token sunucudan, keyB64 cihazda üretilmiş) ve OS paylaşım
/// menüsüyle iletilir — web'in /send-link akışındaki (keyB64'ün e-posta
/// gövdesi için sunucuya kısa süreliğine gönderilmesi) zero-knowledge
/// tavizine mobilde ihtiyaç yok.
class UploadService {
  final Dio _dio = ApiClient.instance.dio;

  Future<UploadResult> uploadFile({
    required String filePath,
    required String originalName,
    required String recipientEmail,
    void Function(int sent, int total)? onProgress,
  }) async {
    final file = File(filePath);
    final totalSize = await file.length();
    if (totalSize <= 0) {
      throw UploadException('Dosya boş görünüyor, başka bir dosya seçin.');
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
    final downloadUrl =
        '$_baseUrl/dl/${fin.token}#${Uri.encodeComponent(keyB64)}';

    return UploadResult(
      token: fin.token,
      downloadUrl: downloadUrl,
      ttlSeconds: fin.ttl,
    );
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
      throw UploadException(_serverError(res, 'Yükleme başlatılamadı.'));
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
        throw UploadException(_serverError(res, 'Parça yüklenemedi.'));
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
      throw UploadException(_serverError(res, 'Yükleme tamamlanamadı.'));
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
        return 'Sunucuya bağlanılamadı (zaman aşımı). İnternet bağlantınızı kontrol edin.';
      case DioExceptionType.connectionError:
        return 'Bağlantı kurulamadı. İnternet bağlantınızı kontrol edin.';
      default:
        return 'Beklenmeyen bir hata oluştu: ${e.message}';
    }
  }
}

class _FinalizeResult {
  final String token;
  final int ttl;
  _FinalizeResult({required this.token, required this.ttl});
}
