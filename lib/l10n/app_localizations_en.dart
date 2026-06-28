// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'SecureVault';

  @override
  String get appSlogan => 'End-to-End Encrypted File Sharing';

  @override
  String get loginUsername => 'Username';

  @override
  String get loginPassword => 'Password';

  @override
  String get loginMin3 => 'At least 3 characters';

  @override
  String get loginMin8 => 'At least 8 characters';

  @override
  String get loginRemember => 'Remember me';

  @override
  String get loginRememberSub =>
      'Stay signed in when you close and reopen the app';

  @override
  String get loginButton => 'Sign In';

  @override
  String get loginNoAccount => 'Don\'t have an account? Sign up';
}
