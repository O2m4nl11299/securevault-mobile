import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Oturum bilgilerini cihazın güvenli deposunda saklar
/// (iOS: Keychain, Android: Keystore-backed EncryptedSharedPreferences).
class SecureStorageService {
  static const _storage = FlutterSecureStorage();

  static const _kSessionToken = 'session_token';
  static const _kPlan = 'user_plan';
  static const _kUsername = 'username';
  static const _kRemember = 'remember_me';
  static const _kIsAdmin = 'is_admin';
  static const _kLocale = 'app_locale';

  static Future<void> saveSession({
    required String token,
    required String plan,
    required String username,
    required bool remember,
    bool isAdmin = false,
  }) async {
    await _storage.write(key: _kSessionToken, value: token);
    await _storage.write(key: _kPlan, value: plan);
    await _storage.write(key: _kUsername, value: username);
    await _storage.write(key: _kRemember, value: remember ? 'true' : 'false');
    await _storage.write(key: _kIsAdmin, value: isAdmin ? 'true' : 'false');
  }

  static Future<String?> readToken() => _storage.read(key: _kSessionToken);
  static Future<String?> readPlan() => _storage.read(key: _kPlan);
  static Future<String?> readUsername() => _storage.read(key: _kUsername);
  static Future<bool> readRemember() async =>
      (await _storage.read(key: _kRemember)) == 'true';
  static Future<bool> readIsAdmin() async =>
      (await _storage.read(key: _kIsAdmin)) == 'true';

  // Dil tercihi - clear() ile SILINMEZ (cikis yapinca dil korunur).
  static Future<void> saveLocale(String code) =>
      _storage.write(key: _kLocale, value: code);
  static Future<String?> readLocale() => _storage.read(key: _kLocale);

  static Future<void> clear() async {
    await _storage.delete(key: _kSessionToken);
    await _storage.delete(key: _kPlan);
    await _storage.delete(key: _kUsername);
    await _storage.delete(key: _kRemember);
    await _storage.delete(key: _kIsAdmin);
  }
}
