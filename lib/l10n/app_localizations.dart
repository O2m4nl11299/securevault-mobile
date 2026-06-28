import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('ru'),
    Locale('tr'),
  ];

  /// Uygulama adi
  ///
  /// In tr, this message translates to:
  /// **'SecureVault'**
  String get appName;

  /// Giris ekrani slogani
  ///
  /// In tr, this message translates to:
  /// **'Uçtan Uca Şifreli Dosya Paylaşımı'**
  String get appSlogan;

  /// No description provided for @loginUsername.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı adı'**
  String get loginUsername;

  /// No description provided for @loginPassword.
  ///
  /// In tr, this message translates to:
  /// **'Şifre'**
  String get loginPassword;

  /// No description provided for @loginMin3.
  ///
  /// In tr, this message translates to:
  /// **'En az 3 karakter'**
  String get loginMin3;

  /// No description provided for @loginMin8.
  ///
  /// In tr, this message translates to:
  /// **'En az 8 karakter'**
  String get loginMin8;

  /// No description provided for @loginRemember.
  ///
  /// In tr, this message translates to:
  /// **'Beni hatırla'**
  String get loginRemember;

  /// No description provided for @loginRememberSub.
  ///
  /// In tr, this message translates to:
  /// **'Kapatıp açtığınızda oturum açık kalsın'**
  String get loginRememberSub;

  /// No description provided for @loginButton.
  ///
  /// In tr, this message translates to:
  /// **'Giriş Yap'**
  String get loginButton;

  /// No description provided for @loginNoAccount.
  ///
  /// In tr, this message translates to:
  /// **'Hesabın yok mu? Kayıt ol'**
  String get loginNoAccount;

  /// No description provided for @homeTooltipPremium.
  ///
  /// In tr, this message translates to:
  /// **'Premium'**
  String get homeTooltipPremium;

  /// No description provided for @homeTooltipInfo.
  ///
  /// In tr, this message translates to:
  /// **'Bilgi ve Güvenlik'**
  String get homeTooltipInfo;

  /// No description provided for @homeTooltipLogout.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış yap'**
  String get homeTooltipLogout;

  /// No description provided for @homeSiteError.
  ///
  /// In tr, this message translates to:
  /// **'Site açılamadı.'**
  String get homeSiteError;

  /// No description provided for @homeLoggedInAs.
  ///
  /// In tr, this message translates to:
  /// **'Giriş yapıldı: {username}'**
  String homeLoggedInAs(String username);

  /// No description provided for @homePlan.
  ///
  /// In tr, this message translates to:
  /// **'Plan: {plan}'**
  String homePlan(String plan);

  /// No description provided for @homeSendFile.
  ///
  /// In tr, this message translates to:
  /// **'Dosya Gönder'**
  String get homeSendFile;

  /// No description provided for @homeSendFolder.
  ///
  /// In tr, this message translates to:
  /// **'Klasör Gönder'**
  String get homeSendFolder;

  /// No description provided for @homeEncryptText.
  ///
  /// In tr, this message translates to:
  /// **'Metin Şifrele'**
  String get homeEncryptText;

  /// No description provided for @homeDownloadFile.
  ///
  /// In tr, this message translates to:
  /// **'Dosya İndir'**
  String get homeDownloadFile;

  /// No description provided for @homeDeleteAccount.
  ///
  /// In tr, this message translates to:
  /// **'Hesabımı Sil'**
  String get homeDeleteAccount;

  /// No description provided for @regErrKvkk.
  ///
  /// In tr, this message translates to:
  /// **'Devam etmek için KVKK Aydınlatma Metni ve Kullanım Sözleşmesi\'ni onaylamanız gerekiyor.'**
  String get regErrKvkk;

  /// No description provided for @regErrTerms.
  ///
  /// In tr, this message translates to:
  /// **'Devam etmek için Kullanım Şartları ve Sorumluluk Reddi\'ni onaylamanız gerekiyor.'**
  String get regErrTerms;

  /// No description provided for @regAccountCreated.
  ///
  /// In tr, this message translates to:
  /// **'Hesap Oluşturuldu'**
  String get regAccountCreated;

  /// No description provided for @regRecoveryInfo.
  ///
  /// In tr, this message translates to:
  /// **'Kurtarma kodunuz - bunu güvenli bir yere kaydedin. Şifrenizi unutursanız hesabınıza sadece bu kodla geri dönebilirsiniz ve bu kod bir daha gösterilmeyecek.'**
  String get regRecoveryInfo;

  /// No description provided for @regSavedReturnLogin.
  ///
  /// In tr, this message translates to:
  /// **'Kaydettim, giriş ekranına dön'**
  String get regSavedReturnLogin;

  /// No description provided for @regTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt Ol'**
  String get regTitle;

  /// No description provided for @regUsernameLabel.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı adı (3-32 karakter)'**
  String get regUsernameLabel;

  /// No description provided for @regUsernameError.
  ///
  /// In tr, this message translates to:
  /// **'3-32 karakter olmalı'**
  String get regUsernameError;

  /// No description provided for @regPasswordLabel.
  ///
  /// In tr, this message translates to:
  /// **'Şifre (en az 8 karakter)'**
  String get regPasswordLabel;

  /// No description provided for @regPasswordError.
  ///
  /// In tr, this message translates to:
  /// **'En az 8 karakter olmalı'**
  String get regPasswordError;

  /// No description provided for @regIReadAccept.
  ///
  /// In tr, this message translates to:
  /// **'Okudum, onaylıyorum: '**
  String get regIReadAccept;

  /// No description provided for @regKvkkText.
  ///
  /// In tr, this message translates to:
  /// **'KVKK Aydınlatma Metni'**
  String get regKvkkText;

  /// No description provided for @regAnd.
  ///
  /// In tr, this message translates to:
  /// **' ve '**
  String get regAnd;

  /// No description provided for @regAgreementText.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım Sözleşmesi'**
  String get regAgreementText;

  /// No description provided for @regTermsText.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım Şartları ve Sorumluluk Reddi'**
  String get regTermsText;

  /// No description provided for @regButton.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt Ol'**
  String get regButton;

  /// No description provided for @upErrPickFile.
  ///
  /// In tr, this message translates to:
  /// **'Önce bir dosya seçin.'**
  String get upErrPickFile;

  /// No description provided for @upErrEmail.
  ///
  /// In tr, this message translates to:
  /// **'Geçerli bir e-posta adresi girin.'**
  String get upErrEmail;

  /// No description provided for @upShareSubject.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli dosya - SecureVault'**
  String get upShareSubject;

  /// No description provided for @upTitle.
  ///
  /// In tr, this message translates to:
  /// **'Dosya Gönder'**
  String get upTitle;

  /// No description provided for @upPickFile.
  ///
  /// In tr, this message translates to:
  /// **'Dosya Seç'**
  String get upPickFile;

  /// No description provided for @upRecipientEmail.
  ///
  /// In tr, this message translates to:
  /// **'Alıcının e-posta adresi'**
  String get upRecipientEmail;

  /// No description provided for @upRecipientHelper.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt amaçlı - dosya bu adrese otomatik gönderilmez,\nlinki bir sonraki ekranda istediğiniz uygulamadan paylaşırsınız.'**
  String get upRecipientHelper;

  /// No description provided for @upExtraPwd.
  ///
  /// In tr, this message translates to:
  /// **'Ek şifre koruması (opsiyonel)'**
  String get upExtraPwd;

  /// No description provided for @upExtraPwdHelper.
  ///
  /// In tr, this message translates to:
  /// **'Belirlerseniz, alıcıya bu şifreyi ayrıca iletmeniz\ngerekir. Dosya, şifre girilmeden indirilemez.'**
  String get upExtraPwdHelper;

  /// No description provided for @upEncryptUpload.
  ///
  /// In tr, this message translates to:
  /// **'Şifrele ve Yükle'**
  String get upEncryptUpload;

  /// No description provided for @upMinutes.
  ///
  /// In tr, this message translates to:
  /// **'{count} dakika'**
  String upMinutes(int count);

  /// No description provided for @upHours.
  ///
  /// In tr, this message translates to:
  /// **'{count} saat'**
  String upHours(int count);

  /// No description provided for @upSuccess.
  ///
  /// In tr, this message translates to:
  /// **'Dosya şifrelenip yüklendi.'**
  String get upSuccess;

  /// No description provided for @upEmailSent.
  ///
  /// In tr, this message translates to:
  /// **'📧 İndirme linki {email} adresine gönderildi.'**
  String upEmailSent(String email);

  /// No description provided for @upEmailFailed.
  ///
  /// In tr, this message translates to:
  /// **'⚠ E-posta gönderilemedi. Linki aşağıdan paylaşabilirsiniz.'**
  String get upEmailFailed;

  /// No description provided for @upLinkExpiry.
  ///
  /// In tr, this message translates to:
  /// **'Bu link {ttl} içinde geçersiz olur ve sadece BİR KEZ kullanılabilir.'**
  String upLinkExpiry(String ttl);

  /// No description provided for @upExtraPwdWarning.
  ///
  /// In tr, this message translates to:
  /// **'Ek şifre belirlediniz. Alıcıya bu şifreyi ayrıca (linkten farklı bir kanaldan) iletmeyi unutmayın.'**
  String get upExtraPwdWarning;

  /// No description provided for @upShareLink.
  ///
  /// In tr, this message translates to:
  /// **'Linki Paylaş'**
  String get upShareLink;

  /// No description provided for @upSendAnother.
  ///
  /// In tr, this message translates to:
  /// **'Başka bir dosya gönder'**
  String get upSendAnother;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'ru', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
