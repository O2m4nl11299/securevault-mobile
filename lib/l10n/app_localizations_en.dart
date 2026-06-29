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

  @override
  String get txtErrEmpty => 'Enter the text to encrypt.';

  @override
  String get txtShareSubject => 'Encrypted text - SecureVault';

  @override
  String get txtTitle => 'Encrypt Text';

  @override
  String get txtLabel => 'Text to encrypt';

  @override
  String get txtHint => 'Type or paste the text you want to encrypt here...';

  @override
  String txtCharCount(int count) {
    return '$count characters';
  }

  @override
  String get txtRecipientHelper =>
      'For records only - you share the link on the next screen.';

  @override
  String get txtExtraPwdHelper =>
      'If set, you must share this password with the recipient separately.';

  @override
  String get txtSuccess => 'Text encrypted and uploaded.';

  @override
  String get txtExtraPwdWarning =>
      'You set an extra password. Remember to share it with the recipient separately.';

  @override
  String get txtEncryptAnother => 'Encrypt another text';

  @override
  String get fldErrPick => 'Please select a folder first.';

  @override
  String get fldShareSubject => 'Encrypted folder - SecureVault';

  @override
  String get fldTitle => 'Send Folder';

  @override
  String get fldDefaultName => 'folder';

  @override
  String get fldPick => 'Select Folder';

  @override
  String get fldDescription =>
      'The selected folder, along with all files inside it, is packed into a single .zip file and encrypted. The recipient opens the downloaded zip on their own device.';

  @override
  String get fldRecipientHelper =>
      'The download link is sent to this address automatically.';

  @override
  String get fldPackaging => 'Packing and encrypting the folder...';

  @override
  String get fldPackButton => 'Pack, Encrypt and Send';

  @override
  String get fldSuccess => 'Folder packed, encrypted, and uploaded.';

  @override
  String get fldSendAnother => 'Send another folder';

  @override
  String get dlErrInvalid => 'Invalid or unrecognized SecureVault link.';

  @override
  String get dlErrPwdProtected =>
      'This link is protected with an extra password — this feature is not yet supported in the mobile app. Open the link in a browser.';

  @override
  String dlSaved(String path) {
    return 'Saved: $path';
  }

  @override
  String dlSaveFailed(String error) {
    return 'Save failed: $error';
  }

  @override
  String get dlTitle => 'Download File';

  @override
  String get dlLinkLabel => 'SecureVault link';

  @override
  String get dlPasteTooltip => 'Paste from clipboard';

  @override
  String dlDownloading(String percent) {
    return 'Downloading and decrypting... $percent%';
  }

  @override
  String get dlButton => 'Download and Decrypt';

  @override
  String get dlNote =>
      'Note: the link is single-use — once downloaded, it will not work again.';

  @override
  String dlSuccess(String fileName) {
    return '$fileName\ndecrypted and saved.';
  }

  @override
  String get dlSaveToDevice => 'Save to Device';

  @override
  String get dlShare => 'Share';

  @override
  String get dlLargeFileNote =>
      'Because the file is large, use the share menu instead of saving directly (e.g. to a file manager or Drive).';

  @override
  String get dlDownloadAnother => 'Download another link';

  @override
  String get delErrConfirm => 'Please check the confirmation box first.';

  @override
  String get delErrPwd => 'Enter your password.';

  @override
  String get delDeleted => 'Your account has been permanently deleted.';

  @override
  String get delTitle => 'Delete Account';

  @override
  String get delIrreversible => 'This action cannot be undone.';

  @override
  String get delExplanation =>
      'Your account and all your information (username, password hash, recovery code) will be permanently deleted. After this, you cannot sign in again with the same username.';

  @override
  String get delPwdLabel => 'Your password (for confirmation)';

  @override
  String get delConfirmCheck => 'I understand that this cannot be undone.';

  @override
  String get delButton => 'Permanently Delete My Account';

  @override
  String get sozTitle => 'User Agreement';

  @override
  String get sozLastUpdate => 'Last updated: June 2026';

  @override
  String get sozH1 => '1. ACCEPTANCE';

  @override
  String get sozP1 =>
      'By using the SecureVault service, you are deemed to have accepted this agreement.';

  @override
  String get sozH2 => '2. SERVICE DESCRIPTION';

  @override
  String get sozP2 =>
      'SecureVault is a file-sharing service with a zero-knowledge architecture that uses client-side AES-256-GCM encryption. Files are stored encrypted on the server, and the encryption key is never transmitted to the server.';

  @override
  String get sozH3 => '3. TERMS OF USE';

  @override
  String get sozP3 =>
      'Sharing the following content is strictly prohibited:\n• Illegal content\n• Copyright infringement\n• Malware\n• Unauthorized sharing of personal data';

  @override
  String get sozH4 => '4. SERVICE LIMITS';

  @override
  String get sozP4 =>
      '• Free members: 250 MB file limit, 4-day retention\n• Premium members: 2 GB file limit, 20-day retention\n• All files are single-use (automatically deleted after download)';

  @override
  String get sozH5 => '5. DISCLAIMER';

  @override
  String get sozP5 =>
      'SecureVault is not responsible for the content of shared files. Due to the zero-knowledge architecture, file content cannot be accessed. For more detailed information, please review the Terms of Use and Disclaimer screen.';

  @override
  String get sozH6 => '6. SERVICE CHANGES';

  @override
  String get sozP6 =>
      'SecureVault reserves the right to change its terms of service without prior notice.';

  @override
  String get sozH7 => '7. ACCOUNT DELETION';

  @override
  String get sozP7 =>
      'You can delete your account at any time. Deletion permanently removes all of your data.';

  @override
  String get sozH8 => '8. CONTACT';

  @override
  String get sozP8 => 'For your questions: no-reply@sifreliveritransferi.com';

  @override
  String get kvkkTitle => 'Privacy Notice (KVKK)';

  @override
  String get kvkkH1 => '1. DATA CONTROLLER';

  @override
  String get kvkkP1 =>
      'As SecureVault (sifreliveritransferi.com), we act as the data controller under Turkish Law No. 6698 on the Protection of Personal Data.';

  @override
  String get kvkkH2 => '2. PERSONAL DATA PROCESSED';

  @override
  String get kvkkP2a =>
      'Our system is designed with a zero-knowledge architecture. The data processed:';

  @override
  String get kvkkP2b =>
      '• Username: Stored as a SHA-256 hash. The original username is not kept on the server.\n• Password: Stored hashed with the Argon2id algorithm. Plaintext passwords are never kept.\n• IP address: Kept as a SHA-256 hash short-term (24 hours) in Redis.\n• Email address (recipient): Used only to send the link; not stored.\n• File content: Reaches the server encrypted. The encryption key is never sent to the server.';

  @override
  String get kvkkH3 => '3. PURPOSE OF DATA PROCESSING';

  @override
  String get kvkkP3 =>
      '• Creating and managing the user account\n• Providing the secure file-sharing service\n• Preventing abuse of the service';

  @override
  String get kvkkH4 => '4. DATA RETENTION PERIOD';

  @override
  String get kvkkP4 =>
      '• User account: Automatically deleted if not actively used for 90 days.\n• Files: Deleted immediately after download, or within 1 hour if not downloaded.\n• IP hash: Automatically deleted after 24 hours.';

  @override
  String get kvkkH5 => '5. RIGHTS OF THE DATA SUBJECT';

  @override
  String get kvkkP5 =>
      'Under Article 11 of the KVKK;\n• To learn whether your data is being processed\n• To request the deletion of your data\n• You can delete your account via the \"Delete My Account\" option.';

  @override
  String get kvkkH6 => '6. CONTACT';

  @override
  String get kvkkP6 => 'For your questions: no-reply@sifreliveritransferi.com';

  @override
  String get termsTitle => 'Terms of Use';

  @override
  String get termsHeader => 'Terms of Use and Disclaimer';

  @override
  String get termsIntro =>
      'By using the SecureVault service, you accept the following terms.';

  @override
  String get terms1Title =>
      'End-to-End Encryption — We Cannot Access the Content';

  @override
  String get terms1Body =>
      'Your files and texts are encrypted with AES-256-GCM on your own device BEFORE being uploaded to the server. The decryption key is never sent to our servers. Therefore, as the service provider, we cannot view, read, or recover the content of the files you send (zero-knowledge architecture).';

  @override
  String get terms2Title => 'Temporary Transfer Tool — Not Permanent Storage';

  @override
  String get terms2Body =>
      'SecureVault is NOT a file storage / backup service. Uploaded files are deleted automatically and permanently after only a short time (1 hour by default) or upon the first download, whichever comes first. Always keep the original copy of your files on your own device.';

  @override
  String get terms3Title => 'No Liability for Data Loss';

  @override
  String get terms3Body =>
      'Because files are deleted automatically by the nature of the service, SecureVault cannot be held responsible for damages arising from a file expiring, failing to download, or being lost for any technical reason. Backing up your important data is entirely your responsibility.';

  @override
  String get terms4Title => 'Third-Party Infrastructure';

  @override
  String get terms4Body =>
      'Encrypted data is temporarily hosted on the Cloudflare R2 cloud infrastructure. Because the data is encrypted, this provider also cannot see the content. Service outages or policy changes of the infrastructure provider are beyond our control.';

  @override
  String get terms5Title => 'Lawful Use — Responsibility Lies with the User';

  @override
  String get terms5Body =>
      'SecureVault may only be used for lawful purposes. You are entirely responsible for the legality of the content you send. Because the content is encrypted, it cannot be inspected; therefore, all legal and criminal liability arising from misuse of the service belongs to the sending user.';

  @override
  String get terms6Title => 'Service Provided \"As Is\"';

  @override
  String get terms6Body =>
      'SecureVault is provided \"as is\" without any warranty. There may be interruptions, delays, or errors in the service. There is no guarantee that the service will operate without interruption or error.';

  @override
  String get termsFooter =>
      'This text is general information and does not constitute legal advice.';

  @override
  String get svcFolderNotFound => 'Folder not found.';

  @override
  String get svcFolderEmpty => 'The folder appears to be empty.';

  @override
  String get svcFileEmpty =>
      'The file appears to be empty; please select another file.';

  @override
  String get svcPackaging => 'Packing the folder (uncompressed zip)...';

  @override
  String get svcPackDone => '✅ Packing complete.';

  @override
  String get svcGenKey => 'Generating the AES-256 key on your device...';

  @override
  String get svcInitUpload => 'Starting the upload session...';

  @override
  String get svcEncrypting =>
      'Encrypting and uploading (AES-256-GCM, 5 MB chunks)...';

  @override
  String get svcUploadDone => '✅ Encrypted upload complete.';

  @override
  String get svcSendingEmail => 'Sending the download link by email...';

  @override
  String svcEmailSent(String email) {
    return '✅ Email sent → $email';
  }

  @override
  String get svcEmailFailed =>
      '⚠ Email could not be sent — you can share the link manually.';

  @override
  String get svcInitFailed => 'Could not start the upload.';

  @override
  String get svcChunkFailed => 'Could not upload chunk.';

  @override
  String get svcFinalizeFailed => 'Could not finalize the upload.';

  @override
  String get svcTimeout =>
      'Could not connect to the server (timeout). Check your internet connection.';

  @override
  String get svcConnError =>
      'Could not establish a connection. Check your internet connection.';

  @override
  String svcUnexpected(String error) {
    return 'An unexpected error occurred: $error';
  }

  @override
  String get dlsvcInvalidKey => 'Invalid encryption key.';

  @override
  String get dlsvcDecryptFailed =>
      'Decryption failed: the key may be wrong or the file may be corrupted.';

  @override
  String get dlsvcLinkExpired =>
      'This link is no longer valid — it was either used or has expired.';

  @override
  String dlsvcDownloadFailed(String code) {
    return 'Download failed (HTTP $code).';
  }

  @override
  String get dlsvcTimeout => 'Could not connect to the server (timeout).';

  @override
  String get dlsvcConnError =>
      'Could not establish a connection. Check your internet connection.';

  @override
  String dlsvcUnexpected(String error) {
    return 'An unexpected error occurred: $error';
  }

  @override
  String get dlsvcDefaultFile => 'file';

  @override
  String get authRegisterFailed => 'Registration failed.';

  @override
  String get authLoginFailed => 'Sign-in failed.';

  @override
  String get authRecoverFailed => 'Recovery failed.';

  @override
  String get authDeleteFailed => 'Account deletion failed.';

  @override
  String get authUnexpectedRetry =>
      'An unexpected error occurred. Please try again.';

  @override
  String get cphTitle => 'Encrypted Message';

  @override
  String get cphModeEncrypt => 'Encrypt Message';

  @override
  String get cphModeDecrypt => 'Decrypt Message';

  @override
  String get cphIntro =>
      'Your message is encrypted entirely on this device. Nothing is sent to the server. Copy the encrypted text and send it via any app (WhatsApp, SMS...); the recipient decrypts it with the same password.';

  @override
  String get cphPlainLabel => 'Message to encrypt';

  @override
  String get cphPlainHint => 'Type your secret message here...';

  @override
  String get cphPassword => 'Password';

  @override
  String get cphPasswordHint => 'The password you share with the recipient';

  @override
  String get cphEncryptBtn => 'Encrypt';

  @override
  String get cphDecryptBtn => 'Decrypt';

  @override
  String get cphEncryptedLabel => 'Encrypted message (copy and send)';

  @override
  String get cphPasteLabel => 'Paste the encrypted message here';

  @override
  String get cphPasteHint => 'Paste the encrypted block you received...';

  @override
  String get cphResultLabel => 'Decrypted message';

  @override
  String get cphCopy => 'Copy';

  @override
  String get cphPaste => 'Paste';

  @override
  String get cphCopied => 'Copied to clipboard.';

  @override
  String get cphErrEmptyText => 'Enter a message to encrypt.';

  @override
  String get cphErrEmptyPwd => 'Enter a password.';

  @override
  String get cphErrEmptyEncrypted => 'Paste the encrypted message to decrypt.';

  @override
  String get cphErrDecrypt =>
      'Decryption failed. The password may be wrong or the message corrupted.';

  @override
  String get cphPwdWarning =>
      'Share the password with the recipient through a secure channel (in person, by phone). The message cannot be decrypted without it.';
}
