import 'package:dio/dio.dart';
import 'api_client.dart';
import 'secure_storage_service.dart';

/// Sunucudan dönen Türkçe hata mesajını taşıyan exception.
/// UI doğrudan `e.toString()` ile bunu kullanıcıya gösterebilir.
class AuthException implements Exception {
  final String message;
  AuthException(this.message);
  @override
  String toString() => message;
}

/// server.js'teki /auth/* ve /api/delete-account endpoint'lerinin
/// birebir karşılığı. Sözleşmeler kodun kendisinden doğrulandı:
///   POST /auth/register  { username, password } -> { success, recoveryToken }
///   POST /auth/login     { username, password } -> { success, sessionToken, plan }
///   POST /auth/recover   { username, recoveryToken, newPassword } -> { success }
///   POST /api/delete-account (header x-session-token) { password } -> { success }
class AuthService {
  final Dio _dio = ApiClient.instance.dio;

  Future<String> register({
    required String username,
    required String password,
  }) async {
    try {
      final res = await _dio.post('/auth/register', data: {
        'username': username,
        'password': password,
      });
      if (res.statusCode == 200 && res.data['success'] == true) {
        return res.data['recoveryToken'] as String;
      }
      throw AuthException(_serverError(res, 'Kayıt başarısız.'));
    } on DioException catch (e) {
      throw AuthException(_networkError(e));
    }
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    try {
      final res = await _dio.post('/auth/login', data: {
        'username': username,
        'password': password,
      });
      if (res.statusCode == 200 && res.data['success'] == true) {
        final token = res.data['sessionToken'] as String;
        final plan = (res.data['plan'] as String?) ?? 'free';
        ApiClient.instance.setSessionToken(token);
        await SecureStorageService.saveSession(
          token: token,
          plan: plan,
          username: username,
        );
        return;
      }
      throw AuthException(_serverError(res, 'Giriş başarısız.'));
    } on DioException catch (e) {
      throw AuthException(_networkError(e));
    }
  }

  Future<void> recover({
    required String username,
    required String recoveryToken,
    required String newPassword,
  }) async {
    try {
      final res = await _dio.post('/auth/recover', data: {
        'username': username,
        'recoveryToken': recoveryToken,
        'newPassword': newPassword,
      });
      if (res.statusCode == 200 && res.data['success'] == true) return;
      throw AuthException(_serverError(res, 'Kurtarma başarısız.'));
    } on DioException catch (e) {
      throw AuthException(_networkError(e));
    }
  }

  Future<void> deleteAccount({required String password}) async {
    try {
      final res = await _dio.post('/api/delete-account', data: {
        'password': password,
      });
      if (res.statusCode == 200 && res.data['success'] == true) {
        await logout();
        return;
      }
      throw AuthException(_serverError(res, 'Hesap silme başarısız.'));
    } on DioException catch (e) {
      throw AuthException(_networkError(e));
    }
  }

  /// Uygulama açılışında diskte token varsa onu Dio'ya yükler.
  /// NOT: Token'ın sunucuda hâlâ geçerli olduğunu DOĞRULAMAZ — Redis'teki
  /// session 24 saatte düşer. Süresi dolmuşsa, ilk yetkili istek 401 döner;
  /// o noktada ekranlarda logout() çağrılıp giriş ekranına dönülmeli.
  Future<bool> tryAutoLogin() async {
    final token = await SecureStorageService.readToken();
    if (token == null) return false;
    ApiClient.instance.setSessionToken(token);
    return true;
  }

  Future<void> logout() async {
    ApiClient.instance.setSessionToken(null);
    await SecureStorageService.clear();
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
