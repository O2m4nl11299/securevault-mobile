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

  @override
  String get homeTooltipPremium => 'Premium';

  @override
  String get homeTooltipInfo => 'Info and Security';

  @override
  String get homeTooltipLogout => 'Sign out';

  @override
  String get homeSiteError => 'Could not open the site.';

  @override
  String homeLoggedInAs(String username) {
    return 'Signed in: $username';
  }

  @override
  String homePlan(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get homeSendFile => 'Send File';

  @override
  String get homeSendFolder => 'Send Folder';

  @override
  String get homeEncryptText => 'Encrypt Text';

  @override
  String get homeDownloadFile => 'Download File';

  @override
  String get homeDeleteAccount => 'Delete My Account';

  @override
  String get regErrKvkk =>
      'To continue, you must accept the Privacy Notice and the User Agreement.';

  @override
  String get regErrTerms =>
      'To continue, you must accept the Terms of Use and Disclaimer.';

  @override
  String get regAccountCreated => 'Account Created';

  @override
  String get regRecoveryInfo =>
      'Your recovery code - save it somewhere safe. If you forget your password, this code is the only way to regain access to your account, and it will not be shown again.';

  @override
  String get regSavedReturnLogin => 'I saved it, return to sign in';

  @override
  String get regTitle => 'Sign Up';

  @override
  String get regUsernameLabel => 'Username (3-32 characters)';

  @override
  String get regUsernameError => 'Must be 3-32 characters';

  @override
  String get regPasswordLabel => 'Password (at least 8 characters)';

  @override
  String get regPasswordError => 'Must be at least 8 characters';

  @override
  String get regIReadAccept => 'I have read and accept: ';

  @override
  String get regKvkkText => 'Privacy Notice';

  @override
  String get regAnd => ' and ';

  @override
  String get regAgreementText => 'User Agreement';

  @override
  String get regTermsText => 'Terms of Use and Disclaimer';

  @override
  String get regButton => 'Sign Up';

  @override
  String get upErrPickFile => 'Please select a file first.';

  @override
  String get upErrEmail => 'Enter a valid email address.';

  @override
  String get upShareSubject => 'Encrypted file - SecureVault';

  @override
  String get upTitle => 'Send File';

  @override
  String get upPickFile => 'Select File';

  @override
  String get upRecipientEmail => 'Recipient\'s email address';

  @override
  String get upRecipientHelper =>
      'For records only - the file is not sent to this address automatically;\nyou share the link from the app of your choice on the next screen.';

  @override
  String get upExtraPwd => 'Extra password protection (optional)';

  @override
  String get upExtraPwdHelper =>
      'If set, you must share this password with the recipient separately.\nThe file cannot be downloaded without it.';

  @override
  String get upEncryptUpload => 'Encrypt and Upload';

  @override
  String upMinutes(int count) {
    return '$count minutes';
  }

  @override
  String upHours(int count) {
    return '$count hours';
  }

  @override
  String get upSuccess => 'File encrypted and uploaded.';

  @override
  String upEmailSent(String email) {
    return '📧 Download link sent to $email.';
  }

  @override
  String get upEmailFailed =>
      '⚠ Email could not be sent. You can share the link below.';

  @override
  String upLinkExpiry(String ttl) {
    return 'This link expires in $ttl and can be used only ONCE.';
  }

  @override
  String get upExtraPwdWarning =>
      'You set an extra password. Remember to share it with the recipient separately (through a different channel than the link).';

  @override
  String get upShareLink => 'Share Link';

  @override
  String get upSendAnother => 'Send another file';
}
