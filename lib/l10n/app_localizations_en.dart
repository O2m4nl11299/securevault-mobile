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
  String get sozH1 => '1. PARTIES AND ACCEPTANCE';

  @override
  String get sozP1 =>
      'This Terms of Use and Service Agreement (the \"Agreement\") is entered into between Fatih Göktürk (the \"Company\") and the user (the \"User\") who benefits from the end-to-end encrypted temporary data transfer service offered through the SecureVault mobile application and the sifreliveritransferi.com website (the \"Service\"). By starting to use the Service, you are deemed to have accepted all terms of this Agreement in advance.';

  @override
  String get sozH2 => '2. DESCRIPTION AND ARCHITECTURE OF THE SERVICE';

  @override
  String get sozP2 =>
      'SecureVault is a temporary data transfer tool with a client-side zero-knowledge architecture. As part of the Service:\n• Files and texts uploaded by the User are encrypted with the AES-256-GCM algorithm on the User\'s own device BEFORE being sent to the server.\n• The decryption key is never transmitted to, stored by, or processed by the Company\'s servers under any circumstances.\n• The Company cannot view, read, modify, or recover the content of the encrypted data hosted on its servers in the event of any data loss.';

  @override
  String get sozH3 => '3. SUBSCRIPTION MODEL AND PAYMENT TERMS';

  @override
  String get sozP3 =>
      'The Service is offered at two different usage levels, Free and Premium:\n• Free Plan: Limited to a maximum file size of 250 MB per transfer and a maximum of 4 uploads per day.\n• Premium Plan (Subscription): Provides a maximum file size of 2 GB per transfer and 20 uploads per day.\n\nPayment Infrastructure: Premium plan memberships and billing are carried out entirely through the Google Play Store (Google LLC) in-app purchase and subscription infrastructure. The Company does not process or store the User\'s credit card, bank account details, or any direct financial data on its own servers. Subscription fees, renewal periods, and cancellation processes are entirely subject to Google Play Store policies. The User has the right to cancel their subscription at any time through their Google Play account settings.';

  @override
  String get sozH4 => '4. TERMS OF USE AND PROHIBITIONS';

  @override
  String get sozP4 =>
      'Although SecureVault cannot inspect encrypted content due to its architecture, the User undertakes to use the Service for lawful purposes only. Transmitting the following content, or using the Service for such purposes, is strictly prohibited:\n• Content that is contrary to applicable law, constitutes a crime, or facilitates illegal activity\n• Files that infringe copyrights, patents, trade secrets, or other intellectual property rights\n• Malware, viruses, or code intended to harm target systems\n• Personal data or private content obtained without the consent of the individuals concerned\n\nIn response to duly issued requests from lawful authorities, the Company is obligated to share the login access records in its possession (see the Privacy Notice/KVKK) with judicial or administrative authorities. Since the content of encrypted files/texts can never be viewed by the Company due to the architecture of the Service, such content cannot be subject to this sharing obligation.';

  @override
  String get sozH5 => '5. CHANGES TO THE AGREEMENT AND THE SERVICE';

  @override
  String get sozP5 =>
      'The Company may amend the terms of this Agreement or the plan limits due to the Service\'s technical requirements, changes in Google Play Store policies, or the need to comply with applicable law. Updates that contain material changes adverse to the User will be reasonably notified to Users through the app or the website at least 7 days before they take effect. If the User does not accept the new terms, they have the right to discontinue use of the Service and cancel their subscription through Google Play.';

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
      '(This privacy notice has been prepared in Turkish as the legally binding text. The following is an informational English translation.)\n\nUnder Law No. 6698 on the Protection of Personal Data (\"KVKK\"), Fatih Göktürk (\"SecureVault\" or the \"Company\") processes the limited personal data specified below in a lawful and fair manner, accurate and up to date where necessary, for specified, explicit and legitimate purposes, and in a manner connected, limited and proportionate to those purposes.\n\nData Controller: Fatih Göktürk (SecureVault)\nContact E-mail: destek@sifreliveritransferi.com';

  @override
  String get kvkkH2 => '2. PERSONAL DATA PROCESSED AND TECHNICAL SECURITY';

  @override
  String get kvkkP2a =>
      'Our system is designed with a zero-knowledge architecture, aiming to process your personal data at the minimum possible level. The following data are processed:';

  @override
  String get kvkkP2b =>
      '• Username / Account Info: Stored irreversibly hashed using SHA-256. The original plaintext is never kept on the server. Retention: while the account is active; permanently deleted automatically upon account deletion or 90 days of inactivity.\n• Account Password: Received over secure channels; only the Argon2id hash is stored. Your plaintext password is never kept in the database. Retention: until the account is deleted.\n• IP Address (Session Security): Kept as a SHA-256 hash in the in-memory database (Redis) for concurrent-session verification, account security and prevention of unauthorized access. Retention: at most 24 hours, then automatically and irreversibly deleted.\n• Access Log (IP + Account + Time): For preventing abuse, ensuring cyber security, detecting fraud and responding to lawful requests from competent judicial/administrative authorities; your IP address (plaintext), your account\'s hash value and the login time are kept in security logs. Retention: 90 days (3 months), then permanently deleted automatically.\n• Deletion Certificate Record: When your file is downloaded or deleted upon expiry, to prove the destruction, the file identifier\'s hash, file size, upload time, deletion time and deletion reason are cryptographically signed and stored. This record contains no file name or content. Retention: 90 days, then permanently deleted automatically.\n• Recipient E-mail Address: Processed only momentarily, upon user request, to send the download link by e-mail. Not stored in the database; deleted immediately after the operation.\n• Subscription and Payment Data: As payments are made via Google Play, your credit/debit card or financial payment details are not kept by us. Only the subscription verification tokens generated by Google, subscription tier and status are processed. Retention: for the subscription period and applicable legal obligations.\n• File Content: Under the zero-knowledge architecture, uploaded files are encrypted on your device before transfer. We cannot view, decrypt, read or access their content. Retention: permanently deleted the moment it is downloaded, or within at most 1 hour if not downloaded.';

  @override
  String get kvkkH3 => '3. METHOD OF COLLECTION, PURPOSES AND LEGAL BASES';

  @override
  String get kvkkP3 =>
      '3.1. Method of Collection\nYour personal data are collected electronically by fully automated means (via APIs, system logs and database records) when you install the SecureVault app, create an account, sign in, make in-app purchases and use the app.\n\n3.2. Purposes and Legal Bases\nYour personal data are processed under Article 5(2) of the KVKK on the following legal bases:\n• Conclusion or Performance of a Contract (Art. 5/2-c): Creating the user account, providing the secure file-transfer service, operating the Premium subscription, performing Google Play subscription verification.\n• Legitimate Interest of the Data Controller (Art. 5/2-f): Ensuring service security, preventing unauthorized access, blocking DDoS, bot attacks and abuse, ensuring cyber security.\n• Compliance with a Legal Obligation (Art. 5/2-ç): Responding to lawful information and document requests from competent judicial and administrative authorities.';

  @override
  String get kvkkH4 => '4. TRANSFER OF PERSONAL DATA AND CROSS-BORDER TRANSFER';

  @override
  String get kvkkP4 =>
      'SecureVault runs its technical operations and encrypted data hosting on the Cloudflare R2 cloud infrastructure. Accordingly, encrypted files and the limited technical data required to provide the service may be transferred abroad because the data centers operate outside the country. To operate Premium subscriptions, subscription verification information is shared with Google LLC (Google Play) systems.\n\nCross-border transfers are carried out securely under the appropriate safeguards foreseen in Article 9 of the KVKK (Standard Contractual Clauses - SCC mechanisms concluded with the relevant global service providers) or, where necessary, based on the user\'s explicit consent freely given in-app.\n\nYour personal data are never sold to advertising companies, data brokers or commercial third parties, nor transferred for marketing. Lawful requests from competent judicial/administrative authorities are reserved.';

  @override
  String get kvkkH5 => '5. SECURITY OF PERSONAL DATA';

  @override
  String get kvkkP5 =>
      'To prevent unlawful processing of and access to personal data, our Company applies strong encryption methods, access control, logging systems, network security, up-to-date software infrastructure and the necessary technical and administrative security measures.';

  @override
  String get kvkkH6 =>
      '6. RIGHTS OF THE DATA SUBJECT AND APPLICATION PROCEDURE';

  @override
  String get kvkkP6 =>
      'Under Article 11 of the KVKK you have the right to: learn whether your personal data are processed, request information if they are, learn the purpose of processing, learn the third parties to whom they are transferred domestically or abroad, request correction of incomplete or inaccurately processed data, and request their deletion or destruction under the conditions set out in the KVKK.\n\nImportant Technical and Security Note: Due to our zero-knowledge architecture, your plaintext data (username, etc.) are irreversibly hashed and encrypted. Therefore direct identity verification and manual data intervention on our systems may not be technically possible. Accordingly, the rights to delete and correct data should primarily be exercised directly by the user via the in-app \"Delete Account\" and \"Edit Profile\" menus.\n\nFor applications outside these menus, under the Communiqué on the Procedures and Principles of Application to the Data Controller, you may contact us by e-mail from the address registered in our systems (so as to enable identity verification) at destek@sifreliveritransferi.com.\n\nAnonymous or unauthorized applications that do not verify your identity or allow matching with the hashed data in the system cannot be processed, in accordance with our cyber security and data privacy policies. Your applications will be concluded free of charge within 30 days at the latest, depending on the nature of the request.';

  @override
  String get termsTitle => 'Disclaimer';

  @override
  String get termsHeader => 'DISCLAIMER STATEMENT';

  @override
  String get termsIntro =>
      'By using the SecureVault service, every user is deemed to have accepted the following matters in advance, given the nature and architecture of the system, and to have released the Company from liability in this regard to the fullest extent possible:';

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

  @override
  String get infoFeatures => 'APP FEATURES';

  @override
  String get infoFeatCipherTitle => 'Offline Encrypted Message';

  @override
  String get infoFeatCipherDesc =>
      'Encrypt your message with a password and copy it; send it via WhatsApp, SMS, or any app you like. Encryption happens entirely on your device — the message is NEVER sent to the server. The recipient decrypts it in the app with the password you shared. This feature is available only in the mobile app.';

  @override
  String get infoFeatFileTitle => 'Encrypted File and Folder Sharing';

  @override
  String get infoFeatFileDesc =>
      'Share your files and folders end-to-end encrypted with a single-use link. The link works once and is automatically deleted shortly after.';

  @override
  String get infoFeatTextTitle => 'Encrypted Text Sharing';

  @override
  String get infoFeatTextDesc =>
      'Encrypt long texts and share them as a link; the recipient reads them securely by clicking the link.';

  @override
  String get infoFeatLangTitle => '4-Language Support';

  @override
  String get infoFeatLangDesc =>
      'Turkish, English, German, and Russian interface.';

  @override
  String get recoverTitle => 'Forgot Password';

  @override
  String get recoverLink => 'Forgot password';

  @override
  String get recoverIntro =>
      'To recover your account, enter your username, the recovery code given to you at registration, and your new password.';

  @override
  String get recoverUsername => 'Username';

  @override
  String get recoverToken => 'Recovery code';

  @override
  String get recoverTokenHint => 'The code given to you at registration';

  @override
  String get recoverNewPassword => 'New password';

  @override
  String get recoverNewPasswordHint => 'At least 8 characters';

  @override
  String get recoverButton => 'Reset Password';

  @override
  String get recoverSuccess =>
      'Your password has been reset successfully. You can sign in with your new password.';

  @override
  String get recoverErrEmpty => 'Please fill in all fields.';

  @override
  String get recoverErrShortPwd =>
      'The new password must be at least 8 characters.';

  @override
  String get recoverBackToLogin => 'Back to sign in';

  @override
  String get termsH1 => '1. TECHNICAL RETENTION AND DELETION CONDITIONS';

  @override
  String get termsP1 =>
      'SecureVault is NOT a cloud storage, permanent archive, or data backup service. All encrypted content uploaded to the Service is automatically, permanently, and irreversibly deleted from the system the moment it is downloaded by the recipient, or once the specified period (1 hour by default) elapses if it is not downloaded. Securely keeping and backing up the original copies of files is entirely the User\'s own responsibility. The Company cannot be held liable for damages arising from data that is not recovered because it has expired or has been deleted for technical reasons.';

  @override
  String get termsH2 =>
      '2. \"ZERO-KNOWLEDGE\" ARCHITECTURE AND LOSS OF PASSWORD';

  @override
  String get termsP2 =>
      'Pursuant to the cryptographic structure of the Service, encryption keys are generated solely on the User\'s device and are not transmitted to the server. If the User loses, forgets, or has their password or the key associated with the download link obtained by a third party, the Company technically has NO ability to renew or change this password, or to open the encrypted file and deliver it to the User. The User is solely responsible for any data loss resulting from negligence in password and key management.';

  @override
  String get termsH3 => '3. THE SERVICE IS PROVIDED \"AS IS\"';

  @override
  String get termsP3 =>
      'To the fullest extent permitted by Article 115 of the Turkish Code of Obligations and applicable legislation, SecureVault provides the Service \"as is\" and on an \"as available\" basis. The Company makes no express or implied warranty that the Service will be uninterrupted, error-free, entirely free from cyber attacks, or fit for a particular purpose. The Company bears no legal or criminal liability for delays, failures to transmit data, or access problems arising from the Google Play Store infrastructure, Cloudflare outages, failures in the global internet backbone, or force majeure events.';

  @override
  String get termsH4 =>
      '4. LIMITATION PURSUANT TO THE TURKISH CODE OF OBLIGATIONS (ART. 115)';

  @override
  String get termsP4 =>
      'Nothing in this disclaimer statement eliminates or limits the Company\'s statutory liability arising from \"gross negligence\" or \"fraud\" under the law. For damages that may arise from the Company\'s slight negligence, the Company\'s liability is limited to the total subscription fee paid by the User to the Company through the Google Play Store in the preceding 12 months.';

  @override
  String get regKvkkInfoPrefix =>
      'You can find details about the processing of your personal data in the ';

  @override
  String get regKvkkInfoSuffix => '.';

  @override
  String get regTransferConsentText =>
      'I give my explicit consent to the secure processing of my data by infrastructure providers based abroad (Cloudflare R2) for the purpose of carrying out technical operations.';

  @override
  String get regErrTransferConsent =>
      'You must give consent to the cross-border data transfer.';

  @override
  String get cphPremiumTitle => 'Premium Feature';

  @override
  String get cphPremiumBody =>
      'The Offline Encrypted Message feature is exclusive to Premium members. Upgrade to Premium to use this feature and enjoy higher upload limits.';

  @override
  String get cphPremiumCancel => 'Cancel';

  @override
  String get cphPremiumGo => 'Go Premium';

  @override
  String get certTitle => 'Deletion Certificate';

  @override
  String get certHomeButton => 'Query Deletion Certificate';

  @override
  String get certIntro =>
      'Verify that your file was truly destroyed with a cryptographically signed certificate. Paste the download link or code.';

  @override
  String get certInputLabel => 'Download link or code';

  @override
  String get certInputHint => 'https://sifreliveritransferi.com/dl/...';

  @override
  String get certQueryButton => 'Query Certificate';

  @override
  String get certPending =>
      'The file has not been destroyed yet — it is still active (not downloaded and not expired).';

  @override
  String get certDestroyed => 'This file has been permanently destroyed.';

  @override
  String get certNotFound =>
      'No deletion record found for this link. Records are kept for 90 days.';

  @override
  String get certErrInvalid =>
      'Link or code not recognized. Paste the download link as is.';

  @override
  String get certErrNetwork => 'Query failed. Check your connection.';

  @override
  String get certReasonDownloaded => 'Downloaded by the recipient';

  @override
  String get certReasonExpired => 'Expired';

  @override
  String get certFieldReason => 'Deletion reason';

  @override
  String get certFieldUploaded => 'Uploaded';

  @override
  String get certFieldDeleted => 'Destroyed';

  @override
  String get certFieldSize => 'Size';

  @override
  String get certFieldSignature => 'Signature (Ed25519)';

  @override
  String get upVaultLabel => 'Two-Key Vault (Premium)';

  @override
  String get upVaultHint =>
      'The key is split into two shares: the Share 1 link goes to the recipient, Share 2 stays with you. The recipient can open the file only when you deliver the second share over a trusted channel. No email is sent in this mode.';

  @override
  String get upVaultLink1 => 'SHARE 1 — SEND TO THE RECIPIENT';

  @override
  String get upVaultLink2 => 'SHARE 2 — KEEP IT';

  @override
  String get upVaultShare1 => 'Share Part 1';

  @override
  String get upVaultShare2 => 'Share Part 2';

  @override
  String get upVaultEmailSkipped =>
      'Email was intentionally not sent — the server never saw any key share.';

  @override
  String get dlVaultNeeded =>
      'This file is protected by a Two-Key Vault. Paste the second share you received from the sender. The download will not start until the share is verified — your one-time link is safe.';

  @override
  String get dlVaultShareLabel => 'Second key share';

  @override
  String get dlVaultShareHint => 'k2.… or the full link';

  @override
  String get dlVaultMismatch =>
      'The shares did not match — the download was not started. It may be the wrong share, or the same share pasted twice. Your link is safe; try again with the correct share.';

  @override
  String get dlVaultInvalid =>
      'Share not recognized. Paste the share starting with k1. or k2., or the full link.';

  @override
  String get upVaultSaveWarning =>
      '⚠️ Save both links before leaving this screen. Share 2 in particular will not be shown again — if you lose it, the file cannot be opened.';

  @override
  String get cphTtlLabel => 'Validity period';

  @override
  String get cphTtlNone => 'No expiry';

  @override
  String get cphTtl1h => '1 hour';

  @override
  String get cphTtl24h => '24 hours';

  @override
  String get cphTtl7d => '7 days';

  @override
  String get cphTtlNote =>
      'If you set a period, this app will not display the content of an expired message. Note: this is an app-level protection — a determined person holding the encrypted text and knowing the password could still reach the content with other tools.';

  @override
  String get cphExpiredError =>
      'This message has expired. The content cannot be displayed.';

  @override
  String cphExpiresAt(String date) {
    return 'Valid until $date';
  }
}
