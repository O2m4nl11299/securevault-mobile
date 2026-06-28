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

  /// No description provided for @premSuccess.
  ///
  /// In tr, this message translates to:
  /// **'🎉 Premium aktif edildi! Tekrar giriş yaparak yeni limitlerinizi görebilirsiniz.'**
  String get premSuccess;

  /// No description provided for @premTitle.
  ///
  /// In tr, this message translates to:
  /// **'Premium'**
  String get premTitle;

  /// No description provided for @premHeader.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault Premium'**
  String get premHeader;

  /// No description provided for @premMonthlySub.
  ///
  /// In tr, this message translates to:
  /// **'Aylık yenilenen abonelik'**
  String get premMonthlySub;

  /// No description provided for @premBenefit1.
  ///
  /// In tr, this message translates to:
  /// **'2 GB dosya boyutu limiti'**
  String get premBenefit1;

  /// No description provided for @premBenefit2.
  ///
  /// In tr, this message translates to:
  /// **'Günde 20 gönderim'**
  String get premBenefit2;

  /// No description provided for @premBenefit3.
  ///
  /// In tr, this message translates to:
  /// **'Uçtan uca şifreli, sınırsız güvenlik'**
  String get premBenefit3;

  /// No description provided for @premBenefit4.
  ///
  /// In tr, this message translates to:
  /// **'Öncelikli destek'**
  String get premBenefit4;

  /// No description provided for @premLoadingStore.
  ///
  /// In tr, this message translates to:
  /// **'Mağaza bilgileri yükleniyor...'**
  String get premLoadingStore;

  /// No description provided for @premStoreUnavailable.
  ///
  /// In tr, this message translates to:
  /// **'Mağaza şu an kullanılamıyor. Lütfen daha sonra tekrar deneyin.'**
  String get premStoreUnavailable;

  /// No description provided for @premProductUnavailable.
  ///
  /// In tr, this message translates to:
  /// **'Premium ürün henüz hazır değil. Lütfen daha sonra tekrar deneyin.'**
  String get premProductUnavailable;

  /// No description provided for @premBuyButton.
  ///
  /// In tr, this message translates to:
  /// **'{price} / ay - Premium Ol'**
  String premBuyButton(String price);

  /// No description provided for @premRestore.
  ///
  /// In tr, this message translates to:
  /// **'Satın alımları geri yükle'**
  String get premRestore;

  /// No description provided for @premAutoRenewInfo.
  ///
  /// In tr, this message translates to:
  /// **'Abonelik, dönem sonunda otomatik yenilenir. Google Play hesabınızdan istediğiniz zaman iptal edebilirsiniz.'**
  String get premAutoRenewInfo;

  /// No description provided for @infoTitle.
  ///
  /// In tr, this message translates to:
  /// **'Bilgi ve Güvenlik'**
  String get infoTitle;

  /// No description provided for @infoSecFlow.
  ///
  /// In tr, this message translates to:
  /// **'GÜVENLİK AKIŞI'**
  String get infoSecFlow;

  /// No description provided for @infoFlow1.
  ///
  /// In tr, this message translates to:
  /// **'Dosya cihazınızda AES-256-GCM ile parçalar halinde şifrelenir.'**
  String get infoFlow1;

  /// No description provided for @infoFlow2.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli veri TLS üzerinden sunucuya yüklenir — anahtar gönderilmez.'**
  String get infoFlow2;

  /// No description provided for @infoFlow3.
  ///
  /// In tr, this message translates to:
  /// **'Sunucu token üretir, indirme linki cihazda oluşturulur.'**
  String get infoFlow3;

  /// No description provided for @infoFlow4.
  ///
  /// In tr, this message translates to:
  /// **'Alıcı linke tıklar — anahtar (#KEY) asla sunucuya gitmez.'**
  String get infoFlow4;

  /// No description provided for @infoFlow5.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli dosya stream olarak indirilir, anında çözülür — düşük RAM.'**
  String get infoFlow5;

  /// No description provided for @infoFlow6.
  ///
  /// In tr, this message translates to:
  /// **'Token atomik olarak silinir, dosya tek kullanımlıktır.'**
  String get infoFlow6;

  /// No description provided for @infoCrypto.
  ///
  /// In tr, this message translates to:
  /// **'KRİPTOGRAFİ'**
  String get infoCrypto;

  /// No description provided for @infoKeyAlgo.
  ///
  /// In tr, this message translates to:
  /// **'Algoritma'**
  String get infoKeyAlgo;

  /// No description provided for @infoKeyQuantum.
  ///
  /// In tr, this message translates to:
  /// **'Kuantum Direnci'**
  String get infoKeyQuantum;

  /// No description provided for @infoValYes.
  ///
  /// In tr, this message translates to:
  /// **'Var'**
  String get infoValYes;

  /// No description provided for @infoKeyKey.
  ///
  /// In tr, this message translates to:
  /// **'Anahtar'**
  String get infoKeyKey;

  /// No description provided for @infoKeyNonce.
  ///
  /// In tr, this message translates to:
  /// **'Nonce / IV'**
  String get infoKeyNonce;

  /// No description provided for @infoValNonce.
  ///
  /// In tr, this message translates to:
  /// **'96-bit CSPRNG (her parça)'**
  String get infoValNonce;

  /// No description provided for @infoKeyAuthTag.
  ///
  /// In tr, this message translates to:
  /// **'Auth Tag'**
  String get infoKeyAuthTag;

  /// No description provided for @infoValAuthTag.
  ///
  /// In tr, this message translates to:
  /// **'128-bit (her parça)'**
  String get infoValAuthTag;

  /// No description provided for @infoKeyTransport.
  ///
  /// In tr, this message translates to:
  /// **'Transport'**
  String get infoKeyTransport;

  /// No description provided for @infoKeyFileLimit.
  ///
  /// In tr, this message translates to:
  /// **'Dosya Limitiniz'**
  String get infoKeyFileLimit;

  /// No description provided for @infoKeyTokenLife.
  ///
  /// In tr, this message translates to:
  /// **'Token Ömrü'**
  String get infoKeyTokenLife;

  /// No description provided for @infoValTokenLife.
  ///
  /// In tr, this message translates to:
  /// **'1 saat'**
  String get infoValTokenLife;

  /// No description provided for @infoKeyUsage.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım'**
  String get infoKeyUsage;

  /// No description provided for @infoValOnce.
  ///
  /// In tr, this message translates to:
  /// **'Tek sefer'**
  String get infoValOnce;

  /// No description provided for @infoKeyServerKey.
  ///
  /// In tr, this message translates to:
  /// **'Sunucu Anahtar Erişimi'**
  String get infoKeyServerKey;

  /// No description provided for @infoValNever.
  ///
  /// In tr, this message translates to:
  /// **'Asla'**
  String get infoValNever;

  /// No description provided for @infoWhy.
  ///
  /// In tr, this message translates to:
  /// **'NEDEN SECUREVAULT?'**
  String get infoWhy;

  /// No description provided for @infoWhy1Title.
  ///
  /// In tr, this message translates to:
  /// **'Sıfır Bilgi'**
  String get infoWhy1Title;

  /// No description provided for @infoWhy1Desc.
  ///
  /// In tr, this message translates to:
  /// **'Dosya cihazınızda şifrelenir. Sunucu içeriği asla görmez.'**
  String get infoWhy1Desc;

  /// No description provided for @infoWhy2Title.
  ///
  /// In tr, this message translates to:
  /// **'Tek Kullanım'**
  String get infoWhy2Title;

  /// No description provided for @infoWhy2Desc.
  ///
  /// In tr, this message translates to:
  /// **'İndirildikten sonra token atomik olarak silinir.'**
  String get infoWhy2Desc;

  /// No description provided for @infoWhy3Title.
  ///
  /// In tr, this message translates to:
  /// **'Ek Şifre'**
  String get infoWhy3Title;

  /// No description provided for @infoWhy3Desc.
  ///
  /// In tr, this message translates to:
  /// **'İkinci güvenlik katmanı — alıcıya ayrı kanaldan iletin.'**
  String get infoWhy3Desc;

  /// No description provided for @infoWhy4Title.
  ///
  /// In tr, this message translates to:
  /// **'Cloudflare R2'**
  String get infoWhy4Title;

  /// No description provided for @infoWhy4Desc.
  ///
  /// In tr, this message translates to:
  /// **'Küresel CDN altyapısı, sıfır egress ücreti.'**
  String get infoWhy4Desc;

  /// No description provided for @infoWhy5Title.
  ///
  /// In tr, this message translates to:
  /// **'Kuantum Dirençli'**
  String get infoWhy5Title;

  /// No description provided for @infoWhy5Desc.
  ///
  /// In tr, this message translates to:
  /// **'AES-256-GCM simetrik şifrelemesi, kuantum bilgisayarlara karşı da güvenli kabul edilir. Anahtarlar cihazınızda üretilir, ağ üzerinden asimetrik anahtar değişimi yapılmaz.'**
  String get infoWhy5Desc;

  /// No description provided for @infoVirus.
  ///
  /// In tr, this message translates to:
  /// **'VİRÜS TARAMASI HAKKINDA'**
  String get infoVirus;

  /// No description provided for @infoVirus1Title.
  ///
  /// In tr, this message translates to:
  /// **'Neden Tarama Yok?'**
  String get infoVirus1Title;

  /// No description provided for @infoVirus1Desc.
  ///
  /// In tr, this message translates to:
  /// **'Zero-knowledge mimarisi gereği sunucu şifreli dosyanın içeriğini göremez, bu yüzden virüs taraması yapamaz.'**
  String get infoVirus1Desc;

  /// No description provided for @infoVirus2Title.
  ///
  /// In tr, this message translates to:
  /// **'Önerimiz'**
  String get infoVirus2Title;

  /// No description provided for @infoVirus2Desc.
  ///
  /// In tr, this message translates to:
  /// **'İndirdiğiniz dosyaları kendi antivirüs yazılımınızla taramanızı öneririz.'**
  String get infoVirus2Desc;

  /// No description provided for @infoWhoFor.
  ///
  /// In tr, this message translates to:
  /// **'KİMLER İÇİN?'**
  String get infoWhoFor;

  /// No description provided for @infoWho1Title.
  ///
  /// In tr, this message translates to:
  /// **'Avukatlar ve Noterler'**
  String get infoWho1Title;

  /// No description provided for @infoWho1Desc.
  ///
  /// In tr, this message translates to:
  /// **'Müvekkil belgelerini güvenle gönderin.'**
  String get infoWho1Desc;

  /// No description provided for @infoWho2Title.
  ///
  /// In tr, this message translates to:
  /// **'Muhasebeciler'**
  String get infoWho2Title;

  /// No description provided for @infoWho2Desc.
  ///
  /// In tr, this message translates to:
  /// **'Finansal dökümanları güvenli paylaşın.'**
  String get infoWho2Desc;

  /// No description provided for @infoWho3Title.
  ///
  /// In tr, this message translates to:
  /// **'İnsan Kaynakları'**
  String get infoWho3Title;

  /// No description provided for @infoWho3Desc.
  ///
  /// In tr, this message translates to:
  /// **'Maaş bordrosu ve sözleşmeler.'**
  String get infoWho3Desc;

  /// No description provided for @infoWho4Title.
  ///
  /// In tr, this message translates to:
  /// **'Sağlık Profesyonelleri'**
  String get infoWho4Title;

  /// No description provided for @infoWho4Desc.
  ///
  /// In tr, this message translates to:
  /// **'Hasta raporu ve test sonuçları.'**
  String get infoWho4Desc;

  /// No description provided for @infoWho5Title.
  ///
  /// In tr, this message translates to:
  /// **'Girişimler'**
  String get infoWho5Title;

  /// No description provided for @infoWho5Desc.
  ///
  /// In tr, this message translates to:
  /// **'Yatırımcıya sunulan gizli dokümanlar.'**
  String get infoWho5Desc;

  /// No description provided for @infoWho6Title.
  ///
  /// In tr, this message translates to:
  /// **'Bireyler'**
  String get infoWho6Title;

  /// No description provided for @infoWho6Desc.
  ///
  /// In tr, this message translates to:
  /// **'Kimlik fotokopisi, pasaport, banka belgesi.'**
  String get infoWho6Desc;

  /// No description provided for @infoDisclaimer.
  ///
  /// In tr, this message translates to:
  /// **'SORUMLULUK REDDİ'**
  String get infoDisclaimer;

  /// No description provided for @infoDisclaimerText.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault geçici bir aktarım aracıdır, kalıcı depolama değildir. Dosyalar kısa süre sonra otomatik silinir; içeriğe erişemeyiz ve veri kaybından sorumlu tutulamayız. Önemli dosyalarınızın yedeğini kendiniz saklayın.'**
  String get infoDisclaimerText;

  /// No description provided for @infoReadTerms.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım Şartlarını Oku'**
  String get infoReadTerms;
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
