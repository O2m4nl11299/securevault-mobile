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

  @override
  String get premSuccess =>
      '🎉 Premium activated! Sign in again to see your new limits.';

  @override
  String get premTitle => 'Premium';

  @override
  String get premHeader => 'SecureVault Premium';

  @override
  String get premMonthlySub => 'Monthly renewing subscription';

  @override
  String get premBenefit1 => '2 GB file size limit';

  @override
  String get premBenefit2 => '20 transfers per day';

  @override
  String get premBenefit3 => 'End-to-end encrypted, unlimited security';

  @override
  String get premBenefit4 => 'Priority support';

  @override
  String get premLoadingStore => 'Loading store information...';

  @override
  String get premStoreUnavailable =>
      'The store is currently unavailable. Please try again later.';

  @override
  String get premProductUnavailable =>
      'The premium product is not ready yet. Please try again later.';

  @override
  String premBuyButton(String price) {
    return '$price / month - Go Premium';
  }

  @override
  String get premRestore => 'Restore purchases';

  @override
  String get premAutoRenewInfo =>
      'The subscription renews automatically at the end of each period. You can cancel anytime from your Google Play account.';

  @override
  String get infoTitle => 'Info and Security';

  @override
  String get infoSecFlow => 'SECURITY FLOW';

  @override
  String get infoFlow1 =>
      'The file is encrypted on your device in chunks with AES-256-GCM.';

  @override
  String get infoFlow2 =>
      'Encrypted data is uploaded to the server over TLS — the key is never sent.';

  @override
  String get infoFlow3 =>
      'The server generates a token; the download link is created on your device.';

  @override
  String get infoFlow4 =>
      'The recipient clicks the link — the key (#KEY) never reaches the server.';

  @override
  String get infoFlow5 =>
      'The encrypted file is streamed and decrypted instantly — low RAM.';

  @override
  String get infoFlow6 =>
      'The token is deleted atomically; the file is single-use.';

  @override
  String get infoCrypto => 'CRYPTOGRAPHY';

  @override
  String get infoKeyAlgo => 'Algorithm';

  @override
  String get infoKeyQuantum => 'Quantum Resistance';

  @override
  String get infoValYes => 'Yes';

  @override
  String get infoKeyKey => 'Key';

  @override
  String get infoKeyNonce => 'Nonce / IV';

  @override
  String get infoValNonce => '96-bit CSPRNG (per chunk)';

  @override
  String get infoKeyAuthTag => 'Auth Tag';

  @override
  String get infoValAuthTag => '128-bit (per chunk)';

  @override
  String get infoKeyTransport => 'Transport';

  @override
  String get infoKeyFileLimit => 'Your File Limit';

  @override
  String get infoKeyTokenLife => 'Token Lifetime';

  @override
  String get infoValTokenLife => '1 hour';

  @override
  String get infoKeyUsage => 'Usage';

  @override
  String get infoValOnce => 'Single use';

  @override
  String get infoKeyServerKey => 'Server Key Access';

  @override
  String get infoValNever => 'Never';

  @override
  String get infoWhy => 'WHY SECUREVAULT?';

  @override
  String get infoWhy1Title => 'Zero Knowledge';

  @override
  String get infoWhy1Desc =>
      'The file is encrypted on your device. The server never sees the content.';

  @override
  String get infoWhy2Title => 'Single Use';

  @override
  String get infoWhy2Desc => 'The token is deleted atomically after download.';

  @override
  String get infoWhy3Title => 'Extra Password';

  @override
  String get infoWhy3Desc =>
      'A second layer of security — share it with the recipient via a separate channel.';

  @override
  String get infoWhy4Title => 'Cloudflare R2';

  @override
  String get infoWhy4Desc => 'Global CDN infrastructure, zero egress fees.';

  @override
  String get infoWhy5Title => 'Quantum Resistant';

  @override
  String get infoWhy5Desc =>
      'AES-256-GCM symmetric encryption is considered secure even against quantum computers. Keys are generated on your device; no asymmetric key exchange occurs over the network.';

  @override
  String get infoVirus => 'ABOUT VIRUS SCANNING';

  @override
  String get infoVirus1Title => 'Why No Scanning?';

  @override
  String get infoVirus1Desc =>
      'Due to the zero-knowledge architecture, the server cannot see the content of the encrypted file, so it cannot scan for viruses.';

  @override
  String get infoVirus2Title => 'Our Recommendation';

  @override
  String get infoVirus2Desc =>
      'We recommend scanning the files you download with your own antivirus software.';

  @override
  String get infoWhoFor => 'WHO IS IT FOR?';

  @override
  String get infoWho1Title => 'Lawyers and Notaries';

  @override
  String get infoWho1Desc => 'Send client documents securely.';

  @override
  String get infoWho2Title => 'Accountants';

  @override
  String get infoWho2Desc => 'Share financial documents securely.';

  @override
  String get infoWho3Title => 'Human Resources';

  @override
  String get infoWho3Desc => 'Payroll and contracts.';

  @override
  String get infoWho4Title => 'Healthcare Professionals';

  @override
  String get infoWho4Desc => 'Patient reports and test results.';

  @override
  String get infoWho5Title => 'Startups';

  @override
  String get infoWho5Desc => 'Confidential documents presented to investors.';

  @override
  String get infoWho6Title => 'Individuals';

  @override
  String get infoWho6Desc => 'ID copies, passport, bank documents.';

  @override
  String get infoDisclaimer => 'DISCLAIMER';

  @override
  String get infoDisclaimerText =>
      'SecureVault is a temporary transfer tool, not permanent storage. Files are automatically deleted after a short time; we cannot access the content and cannot be held responsible for data loss. Keep your own backups of important files.';

  @override
  String get infoReadTerms => 'Read Terms of Use';
}
