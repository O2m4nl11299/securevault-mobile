// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'SecureVault';

  @override
  String get appSlogan => 'Uçtan Uca Şifreli Dosya Paylaşımı';

  @override
  String get loginUsername => 'Kullanıcı adı';

  @override
  String get loginPassword => 'Şifre';

  @override
  String get loginMin3 => 'En az 3 karakter';

  @override
  String get loginMin8 => 'En az 8 karakter';

  @override
  String get loginRemember => 'Beni hatırla';

  @override
  String get loginRememberSub => 'Kapatıp açtığınızda oturum açık kalsın';

  @override
  String get loginButton => 'Giriş Yap';

  @override
  String get loginNoAccount => 'Hesabın yok mu? Kayıt ol';
}
