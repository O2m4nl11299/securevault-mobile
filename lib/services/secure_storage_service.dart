import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Oturum bilgilerini cihazın güvenli deposunda saklar
/// (iOS: Keychain, Android: Keystore-backed EncryptedSharedPreferences).
class SecureStorageService {
  static const _storage = FlutterSecureStorage();

  static const _kSessionToken = 'session_token';
  static const _kPlan = 'user_plan';
  static const _kUsername = 'username';

  static Future<void> saveSession({
    required String token,
    required String plan,
    required String username,
  }) async {
    await _storage.write(key: _kSessionToken, value: token);
    await _storage.write(key: _kPlan, value: plan);
    await _storage.write(key: _kUsername, value: username);
  }

  static Future<String?> readToken() => _storage.read(key: _kSessionToken);
  static Future<String?> readPlan() => _storage.read(key: _kPlan);
  static Future<String?> readUsername() => _storage.read(key: _kUsername);

  static Future<void> clear() async {
    await _storage.delete(key: _kSessionToken);
    await _storage.delete(key: _kPlan);
    await _storage.delete(key: _kUsername);
  }
}
