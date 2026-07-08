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

  /// No description provided for @txtErrEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Şifrelenecek metni girin.'**
  String get txtErrEmpty;

  /// No description provided for @txtShareSubject.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli metin - SecureVault'**
  String get txtShareSubject;

  /// No description provided for @txtTitle.
  ///
  /// In tr, this message translates to:
  /// **'Metin Şifrele'**
  String get txtTitle;

  /// No description provided for @txtLabel.
  ///
  /// In tr, this message translates to:
  /// **'Şifrelenecek metin'**
  String get txtLabel;

  /// No description provided for @txtHint.
  ///
  /// In tr, this message translates to:
  /// **'Şifrelemek istediğiniz metni buraya yazın veya yapıştırın...'**
  String get txtHint;

  /// No description provided for @txtCharCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} karakter'**
  String txtCharCount(int count);

  /// No description provided for @txtRecipientHelper.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt amaçlı - linki bir sonraki ekranda paylaşırsınız.'**
  String get txtRecipientHelper;

  /// No description provided for @txtExtraPwdHelper.
  ///
  /// In tr, this message translates to:
  /// **'Belirlerseniz, alıcıya bu şifreyi ayrıca iletmeniz gerekir.'**
  String get txtExtraPwdHelper;

  /// No description provided for @txtSuccess.
  ///
  /// In tr, this message translates to:
  /// **'Metin şifrelenip yüklendi.'**
  String get txtSuccess;

  /// No description provided for @txtExtraPwdWarning.
  ///
  /// In tr, this message translates to:
  /// **'Ek şifre belirlediniz. Alıcıya bu şifreyi ayrıca iletmeyi unutmayın.'**
  String get txtExtraPwdWarning;

  /// No description provided for @txtEncryptAnother.
  ///
  /// In tr, this message translates to:
  /// **'Başka bir metin şifrele'**
  String get txtEncryptAnother;

  /// No description provided for @fldErrPick.
  ///
  /// In tr, this message translates to:
  /// **'Önce bir klasör seçin.'**
  String get fldErrPick;

  /// No description provided for @fldShareSubject.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli klasör - SecureVault'**
  String get fldShareSubject;

  /// No description provided for @fldTitle.
  ///
  /// In tr, this message translates to:
  /// **'Klasör Gönder'**
  String get fldTitle;

  /// No description provided for @fldDefaultName.
  ///
  /// In tr, this message translates to:
  /// **'klasör'**
  String get fldDefaultName;

  /// No description provided for @fldPick.
  ///
  /// In tr, this message translates to:
  /// **'Klasör Seç'**
  String get fldPick;

  /// No description provided for @fldDescription.
  ///
  /// In tr, this message translates to:
  /// **'Seçtiğiniz klasör, içindeki tüm dosyalarla birlikte tek bir .zip dosyasında toplanıp şifrelenir. Alıcı, inen zip dosyasını kendi cihazında açar.'**
  String get fldDescription;

  /// No description provided for @fldRecipientHelper.
  ///
  /// In tr, this message translates to:
  /// **'İndirme linki bu adrese otomatik gönderilir.'**
  String get fldRecipientHelper;

  /// No description provided for @fldPackaging.
  ///
  /// In tr, this message translates to:
  /// **'Klasör paketleniyor ve şifreleniyor...'**
  String get fldPackaging;

  /// No description provided for @fldPackButton.
  ///
  /// In tr, this message translates to:
  /// **'Paketle, Şifrele ve Gönder'**
  String get fldPackButton;

  /// No description provided for @fldSuccess.
  ///
  /// In tr, this message translates to:
  /// **'Klasör paketlenip şifrelendi ve yüklendi.'**
  String get fldSuccess;

  /// No description provided for @fldSendAnother.
  ///
  /// In tr, this message translates to:
  /// **'Başka bir klasör gönder'**
  String get fldSendAnother;

  /// No description provided for @dlErrInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Geçersiz veya tanınmayan SecureVault linki.'**
  String get dlErrInvalid;

  /// No description provided for @dlErrPwdProtected.
  ///
  /// In tr, this message translates to:
  /// **'Bu link ek şifre korumalı — mobil uygulamada bu özellik henüz desteklenmiyor. Linki bir tarayıcıda açın.'**
  String get dlErrPwdProtected;

  /// No description provided for @dlSaved.
  ///
  /// In tr, this message translates to:
  /// **'Kaydedildi: {path}'**
  String dlSaved(String path);

  /// No description provided for @dlSaveFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kaydetme başarısız: {error}'**
  String dlSaveFailed(String error);

  /// No description provided for @dlTitle.
  ///
  /// In tr, this message translates to:
  /// **'Dosya İndir'**
  String get dlTitle;

  /// No description provided for @dlLinkLabel.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault linki'**
  String get dlLinkLabel;

  /// No description provided for @dlPasteTooltip.
  ///
  /// In tr, this message translates to:
  /// **'Panodan yapıştır'**
  String get dlPasteTooltip;

  /// No description provided for @dlDownloading.
  ///
  /// In tr, this message translates to:
  /// **'İndiriliyor ve şifresi çözülüyor... %{percent}'**
  String dlDownloading(String percent);

  /// No description provided for @dlButton.
  ///
  /// In tr, this message translates to:
  /// **'İndir ve Şifresini Çöz'**
  String get dlButton;

  /// No description provided for @dlNote.
  ///
  /// In tr, this message translates to:
  /// **'Not: link tek kullanımlıktır — bir kez indirildikten sonra tekrar çalışmaz.'**
  String get dlNote;

  /// No description provided for @dlSuccess.
  ///
  /// In tr, this message translates to:
  /// **'{fileName}\nşifresi çözülerek kaydedildi.'**
  String dlSuccess(String fileName);

  /// No description provided for @dlSaveToDevice.
  ///
  /// In tr, this message translates to:
  /// **'Cihaza Kaydet'**
  String get dlSaveToDevice;

  /// No description provided for @dlShare.
  ///
  /// In tr, this message translates to:
  /// **'Paylaş'**
  String get dlShare;

  /// No description provided for @dlLargeFileNote.
  ///
  /// In tr, this message translates to:
  /// **'Dosya büyük olduğu için doğrudan kaydetme yerine paylaşım menüsünü kullanın (örn. bir dosya yöneticisine veya Drive\'a).'**
  String get dlLargeFileNote;

  /// No description provided for @dlDownloadAnother.
  ///
  /// In tr, this message translates to:
  /// **'Başka bir link indir'**
  String get dlDownloadAnother;

  /// No description provided for @delErrConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen önce onay kutusunu işaretleyin.'**
  String get delErrConfirm;

  /// No description provided for @delErrPwd.
  ///
  /// In tr, this message translates to:
  /// **'Şifreni gir.'**
  String get delErrPwd;

  /// No description provided for @delDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Hesabın kalıcı olarak silindi.'**
  String get delDeleted;

  /// No description provided for @delTitle.
  ///
  /// In tr, this message translates to:
  /// **'Hesabı Sil'**
  String get delTitle;

  /// No description provided for @delIrreversible.
  ///
  /// In tr, this message translates to:
  /// **'Bu işlem geri alınamaz.'**
  String get delIrreversible;

  /// No description provided for @delExplanation.
  ///
  /// In tr, this message translates to:
  /// **'Hesabın ve tüm bilgilerin (kullanıcı adı, şifre hash\'i, kurtarma kodu) kalıcı olarak silinir. Bu işlemden sonra aynı kullanıcı adıyla tekrar giriş yapamazsın.'**
  String get delExplanation;

  /// No description provided for @delPwdLabel.
  ///
  /// In tr, this message translates to:
  /// **'Şifren (onay için)'**
  String get delPwdLabel;

  /// No description provided for @delConfirmCheck.
  ///
  /// In tr, this message translates to:
  /// **'Bunun geri alınamaz olduğunu anlıyorum.'**
  String get delConfirmCheck;

  /// No description provided for @delButton.
  ///
  /// In tr, this message translates to:
  /// **'Hesabımı Kalıcı Olarak Sil'**
  String get delButton;

  /// No description provided for @sozTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım Sözleşmesi'**
  String get sozTitle;

  /// No description provided for @sozLastUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Son güncelleme: Haziran 2026'**
  String get sozLastUpdate;

  /// No description provided for @sozH1.
  ///
  /// In tr, this message translates to:
  /// **'1. TARAFLAR VE KABUL'**
  String get sozH1;

  /// No description provided for @sozP1.
  ///
  /// In tr, this message translates to:
  /// **'İşbu Kullanım Şartları ve Hizmet Sözleşmesi (\"Sözleşme\"), Fatih Göktürk (\"Şirket\") ile SecureVault mobil uygulaması ve sifreliveritransferi.com web sitesi (\"Hizmet\") üzerinden sunulan uçtan uca şifreli geçici veri aktarım servisinden yararlanan kullanıcı (\"Kullanıcı\") arasında akdedilmiştir. Hizmeti kullanmaya başlayarak, işbu Sözleşme\'deki tüm şartları peşinen kabul etmiş sayılırsınız.'**
  String get sozP1;

  /// No description provided for @sozH2.
  ///
  /// In tr, this message translates to:
  /// **'2. HİZMETİN TANIMI VE MİMARİSİ'**
  String get sozH2;

  /// No description provided for @sozP2.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault, istemci taraflı (client-side) sıfır bilgi (zero-knowledge) mimarisine sahip bir geçici veri aktarım aracıdır. Hizmet kapsamında:\n• Kullanıcı tarafından yüklenen dosyalar ve metinler, sunucuya gönderilmeden ÖNCE Kullanıcı\'nın kendi cihazında AES-256-GCM algoritması ile şifrelenir.\n• Şifre çözme anahtarı (key) hiçbir koşulda Şirket sunucularına iletilmez, saklanmaz veya işlenmez.\n• Şirket, sunucularında barındırılan şifreli verilerin içeriğini görüntüleyemez, okuyamaz, değiştiremez veya herhangi bir veri kaybı durumunda bu verileri geri kurtaramaz.'**
  String get sozP2;

  /// No description provided for @sozH3.
  ///
  /// In tr, this message translates to:
  /// **'3. ABONELİK MODELİ VE ÖDEME KOŞULLARI'**
  String get sozH3;

  /// No description provided for @sozP3.
  ///
  /// In tr, this message translates to:
  /// **'Hizmet, Ücretsiz (Free) ve Premium olmak üzere iki farklı kullanım seviyesiyle sunulmaktadır:\n• Ücretsiz Plan: Tek seferde maksimum 250 MB dosya boyutu ve günde en fazla 4 gönderim limiti ile sınırlıdır.\n• Premium Plan (Abonelik): Tek seferde maksimum 2 GB dosya boyutu ve günde 20 gönderim limiti sağlar.\n\nÖdeme Altyapısı: Premium plan üyelikleri ve tahsilat işlemleri tamamen Google Play Store (Google LLC) uygulama içi satın alım ve abonelik altyapısı üzerinden gerçekleştirilir. Şirket, Kullanıcıların kredi kartı, banka hesap bilgileri veya doğrudan finansal verilerini kendi sunucularında işlemez ve saklamaz. Abonelik ücretleri, yenileme periyotları ve iptal süreçleri tamamen Google Play Store politikalarına tabidir. Kullanıcı, aboneliğini dilediği zaman Google Play hesap ayarları üzerinden iptal etme hakkına sahiptir.'**
  String get sozP3;

  /// No description provided for @sozH4.
  ///
  /// In tr, this message translates to:
  /// **'4. KULLANIM KOŞULLARI VE YASAKLAR'**
  String get sozH4;

  /// No description provided for @sozP4.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault mimari gereği şifreli içerikleri denetleyemese de, Kullanıcı Hizmeti hukuka uygun amaçlarla kullanmayı taahhüt eder. Aşağıdaki içeriklerin aktarılması veya Hizmetin bu amaçlarla kullanılması kesinlikle yasaktır:\n• Yürürlükteki yasalara aykırı, suç teşkil eden veya yasa dışı faaliyetleri kolaylaştıran içerikler\n• Telif hakları, patent, ticari sır veya diğer fikri mülkiyet haklarını ihlal eden dosyalar\n• Kötü amaçlı yazılım (malware), virüs veya hedef sistemlere zarar verme amaçlı kodlar\n• Kişilerin rızası dışında elde edilmiş kişisel veriler veya mahrem içerikler\n\nYasal makamlardan gelen usulüne uygun talepler doğrultusunda, Şirket elinde bulunan giriş erişim kayıtlarını (bkz. KVKK Aydınlatma Metni) adli/idari mercilerle paylaşmakla yükümlüdür. Şifreli dosya/metin içeriği ise mimari gereği Şirket tarafından hiçbir koşulda görüntülenemediğinden bu paylaşıma konu edilemez.'**
  String get sozP4;

  /// No description provided for @sozH5.
  ///
  /// In tr, this message translates to:
  /// **'5. SÖZLEŞME VE HİZMET DEĞİŞİKLİKLERİ'**
  String get sozH5;

  /// No description provided for @sozP5.
  ///
  /// In tr, this message translates to:
  /// **'Şirket, Hizmetin teknik gereksinimleri, Google Play Store politika değişiklikleri veya yasal mevzuata uyum amacıyla işbu Sözleşme şartlarında veya plan limitlerinde değişiklik yapabilir. Kullanıcı aleyhine esaslı değişiklik barındıran güncellemeler, yürürlüğe girmeden en az 7 gün önce uygulama içinden veya web sitesinden Kullanıcılara makul bir şekilde bildirilir. Kullanıcı, yeni şartları kabul etmemesi halinde Hizmet kullanımını sonlandırma ve Google Play üzerinden aboneliğini iptal etme hakkına sahiptir.'**
  String get sozP5;

  /// No description provided for @sozH6.
  ///
  /// In tr, this message translates to:
  /// **'6. HİZMET DEĞİŞİKLİKLERİ'**
  String get sozH6;

  /// No description provided for @sozP6.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault, hizmet koşullarını önceden bildirimde bulunmaksızın değiştirme hakkını saklı tutar.'**
  String get sozP6;

  /// No description provided for @sozH7.
  ///
  /// In tr, this message translates to:
  /// **'7. HESAP SİLME'**
  String get sozH7;

  /// No description provided for @sozP7.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınızı istediğiniz zaman silebilirsiniz. Silme işlemi tüm verilerinizi kalıcı olarak kaldırır.'**
  String get sozP7;

  /// No description provided for @sozH8.
  ///
  /// In tr, this message translates to:
  /// **'8. İLETİŞİM'**
  String get sozH8;

  /// No description provided for @sozP8.
  ///
  /// In tr, this message translates to:
  /// **'Sorularınız için: no-reply@sifreliveritransferi.com'**
  String get sozP8;

  /// No description provided for @kvkkTitle.
  ///
  /// In tr, this message translates to:
  /// **'KVKK Aydınlatma Metni'**
  String get kvkkTitle;

  /// No description provided for @kvkkH1.
  ///
  /// In tr, this message translates to:
  /// **'1. VERİ SORUMLUSU'**
  String get kvkkH1;

  /// No description provided for @kvkkP1.
  ///
  /// In tr, this message translates to:
  /// **'6698 sayılı Kişisel Verilerin Korunması Kanunu (\"KVKK\") uyarınca, Fatih Göktürk (\"SecureVault\" veya \"Şirket\"), aşağıda belirtilen sınırlı kişisel verilerinizi kanuna ve dürüstlük kurallarına uygun olarak işlemektedir.'**
  String get kvkkP1;

  /// No description provided for @kvkkH2.
  ///
  /// In tr, this message translates to:
  /// **'2. İŞLENEN KİŞİSEL VERİLER VE TEKNİK GÜVENLİK'**
  String get kvkkH2;

  /// No description provided for @kvkkP2a.
  ///
  /// In tr, this message translates to:
  /// **'Sistemimiz sıfır bilgi (zero-knowledge) mimarisi ile tasarlanmış olup, kişisel verilerinizin asgari düzeyde tutulması amaçlanmıştır. Bu doğrultuda işlenen verileriniz kategorik olarak şunlardır:'**
  String get kvkkP2a;

  /// No description provided for @kvkkP2b.
  ///
  /// In tr, this message translates to:
  /// **'• Kullanıcı Adı / Hesap Bilgisi — Geri döndürülemez şekilde SHA-256 algoritması ile hash\'lenerek saklanır; orijinal metin sunucuda tutulmaz. Saklama süresi: hesap aktif olduğu sürece; 90 gün inaktiflikte otomatik silinir.\n• Hesap Şifresi — Argon2id kriptografik fonksiyonu ile hash\'lenerek saklanır; düz metin şifreniz asla sunucuya ulaşmaz. Saklama süresi: hesap silinene kadar.\n• IP Adresi (Oturum Güvenliği) — Eşzamanlı oturum/IP doğrulaması amacıyla SHA-256 ile hash\'lenerek bellek içi veri tabanında (Redis) tutulur. Saklama süresi: en fazla 24 saat, sonra otomatik ve kalıcı olarak silinir.\n• Giriş Erişim Kaydı (IP + Hesap + Zaman) — Hizmetin kötüye kullanımının önlenmesi, caydırıcılık sağlanması ve yetkili adli/idari makamların yasal talebi halinde paylaşılabilmesi amacıyla; hesabınıza yapılan girişlerde IP adresiniz (düz metin), hesabınızın geri döndürülemez hash değeri ve giriş zamanı ayrı bir güvenlik kaydında tutulur. Saklama süresi: 90 gün (3 ay), sonrasında otomatik olarak kalıcı şekilde silinir.\n• Alıcı E-posta Adresi — Yalnızca Kullanıcı talebiyle indirme linkinin otomatik e-posta olarak iletilmesi amacıyla anlık işlenir; veri tabanına kaydedilmez, anında imha edilir.\n• Abonelik ve Ödeme Verisi — Ödemeler Google Play üzerinden yapıldığından finansal verileriniz bizde tutulmaz; yalnızca Google tarafından üretilen abonelik durum doğrulama jetonları (token) ve üyelik seviyesi bilgisi işlenir. Saklama süresi: abonelik süresince ve yasal mali yükümlülükler boyunca.\n• Dosya İçeriği — Kişisel veri olarak kabul edilmemekle birlikte, yüklenen dosyalar sunucuya ulaşmadan önce cihazınızda şifrelenir; Şirket içeriğe erişemez. Saklama süresi: indirildiği an veya indirilmezse maksimum 1 saat içinde kalıcı olarak silinir.'**
  String get kvkkP2b;

  /// No description provided for @kvkkH3.
  ///
  /// In tr, this message translates to:
  /// **'3. KİŞİSEL VERİLERİN İŞLENME AMAÇLARI VE HUKUKİ SEBEPLERİ'**
  String get kvkkH3;

  /// No description provided for @kvkkP3.
  ///
  /// In tr, this message translates to:
  /// **'Kişisel verileriniz, KVKK m. 5/2 uyarınca aşağıdaki hukuki sebeplere dayalı olarak işlenmektedir:\n• Sözleşmenin Kurulması ve İfası (m.5/2-c): Kullanıcı hesabının oluşturulması, Premium abonelik hizmetinin Google Play Store entegrasyonu ile sunulabilmesi ve dosya aktarım hizmetinin yürütülmesi.\n• Veri Sorumlusunun Meşru Menfaati (m.5/2-f): Hizmetin kötüye kullanımının önlenmesi, siber güvenliğin (DDoS saldırıları, bot girişleri vb.) sağlanması amacıyla IP adreslerinin ve giriş kayıtlarının işlenmesi ve caydırıcılık sağlanması.\n• Hukuki Yükümlülüğün Yerine Getirilmesi (m.5/2-ç): Yetkili adli ve idari makamların yasal talebi halinde, elde bulunan giriş erişim kayıtlarının usulüne uygun şekilde paylaşılması.'**
  String get kvkkP3;

  /// No description provided for @kvkkH4.
  ///
  /// In tr, this message translates to:
  /// **'4. İŞLENEN KİŞİSEL VERİLERİN AKTARILMASI VE YURT DIŞI AKTARIM BEYANI'**
  String get kvkkH4;

  /// No description provided for @kvkkP4.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault, teknik operasyonlarını ve şifreli veri barındırma hizmetini Cloudflare R2 bulut altyapısı üzerinde yürütmektedir. Şifreli veri bloklarınız ile yukarıda belirtilen sınırlı hesap verileriniz (SHA-256 hash\'leri), veri merkezi altyapısının yurt dışında yer alması sebebiyle yurt dışına aktarılmaktadır. Ayrıca abonelik süreçlerinin yürütülmesi amacıyla abonelik doğrulama jetonları Google Play Store (Google LLC, ABD) sistemleri ile karşılıklı olarak paylaşılmaktadır. Bu aktarımlar, KVKK Madde 9 kapsamında Kullanıcının uygulama içi açık rızası ve ilgili hizmet sağlayıcılarla akdedilen standart sözleşme hükümleri (SCC) mekanizmalarına dayanarak güvenli bir şekilde gerçekleştirilmektedir. Veriler, yerel üçüncü şahıslara veya reklam şirketlerine asla aktarılmaz. Yetkili adli/idari makamların usulüne uygun yasal talebi halinde, yukarıda tanımlanan giriş erişim kayıtları (madde 2) ilgili makamlarla paylaşılabilir.'**
  String get kvkkP4;

  /// No description provided for @kvkkH5.
  ///
  /// In tr, this message translates to:
  /// **'5. VERİ SAHİBİNİN HAKLARI VE BAŞVURU'**
  String get kvkkH5;

  /// No description provided for @kvkkP5.
  ///
  /// In tr, this message translates to:
  /// **'KVKK\'nın 11. maddesi uyarınca; kişisel verilerinizin işlenip işlenmediğini öğrenme, işlenmişse bilgi talep etme, silinmesini veya düzeltilmesini isteme haklarına sahipsiniz. Güvenlik mimarimiz gereği, düz metin verileriniz (kullanıcı adı vb.) hash\'lendiğinden, kimlik doğrulaması yapılabilmesi adına başvurularınızı uygulama içerisindeki \"Hesabımı Sil\" butonuyla doğrudan yapabilir veya yasal haklarınız için destek@sifreliveritransferi.com adresinden bize ulaşabilirsiniz.'**
  String get kvkkP5;

  /// No description provided for @kvkkH6.
  ///
  /// In tr, this message translates to:
  /// **'6. İLETİŞİM'**
  String get kvkkH6;

  /// No description provided for @kvkkP6.
  ///
  /// In tr, this message translates to:
  /// **'Sorularınız için: no-reply@sifreliveritransferi.com'**
  String get kvkkP6;

  /// No description provided for @termsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sorumluluk Reddi'**
  String get termsTitle;

  /// No description provided for @termsHeader.
  ///
  /// In tr, this message translates to:
  /// **'SORUMLULUK REDDİ (DISCLAIMER) BEYANI'**
  String get termsHeader;

  /// No description provided for @termsIntro.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault hizmetini kullanan her kullanıcı, sistemin doğası ve mimari yapısı gereği aşağıdaki hususları peşinen kabul etmiş ve Şirketi bu konularda en geniş anlamda ibra etmiş sayılır:'**
  String get termsIntro;

  /// No description provided for @terms1Title.
  ///
  /// In tr, this message translates to:
  /// **'Uçtan Uca Şifreleme — İçeriğe Erişemeyiz'**
  String get terms1Title;

  /// No description provided for @terms1Body.
  ///
  /// In tr, this message translates to:
  /// **'Dosyalarınız ve metinleriniz, sunucuya yüklenmeden ÖNCE kendi cihazınızda AES-256-GCM ile şifrelenir. Şifre çözme anahtarı hiçbir zaman sunucularımıza gönderilmez. Bu nedenle biz, hizmet sağlayıcı olarak, gönderdiğiniz dosyaların içeriğini görüntüleyemez, okuyamaz veya kurtaramayız (zero-knowledge mimarisi).'**
  String get terms1Body;

  /// No description provided for @terms2Title.
  ///
  /// In tr, this message translates to:
  /// **'Geçici Aktarım Aracı — Kalıcı Depolama Değildir'**
  String get terms2Title;

  /// No description provided for @terms2Body.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault bir dosya SAKLAMA / yedekleme hizmeti DEĞİLDİR. Yüklenen dosyalar yalnızca kısa bir süre (varsayılan 1 saat) veya ilk indirme gerçekleştiğinde, hangisi önce olursa, otomatik ve kalıcı olarak silinir. Dosyalarınızın asıl kopyasını her zaman kendi cihazınızda saklayın.'**
  String get terms2Body;

  /// No description provided for @terms3Title.
  ///
  /// In tr, this message translates to:
  /// **'Veri Kaybından Sorumluluk Kabul Edilmez'**
  String get terms3Title;

  /// No description provided for @terms3Body.
  ///
  /// In tr, this message translates to:
  /// **'Hizmetin doğası gereği dosyalar otomatik silindiği için, bir dosyanın süresi dolması, indirilememesi veya herhangi bir teknik nedenle kaybolmasından doğabilecek zararlardan SecureVault sorumlu tutulamaz. Önemli verilerinizin yedeğini almak tamamen sizin sorumluluğunuzdadır.'**
  String get terms3Body;

  /// No description provided for @terms4Title.
  ///
  /// In tr, this message translates to:
  /// **'Üçüncü Taraf Altyapı'**
  String get terms4Title;

  /// No description provided for @terms4Body.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli veriler, Cloudflare R2 bulut altyapısında geçici olarak barındırılır. Veriler şifreli olduğu için bu sağlayıcı da içeriği göremez. Altyapı sağlayıcısının hizmet kesintileri veya politika değişiklikleri kontrolümüz dışındadır.'**
  String get terms4Body;

  /// No description provided for @terms5Title.
  ///
  /// In tr, this message translates to:
  /// **'Yasal Kullanım — Sorumluluk Kullanıcıdadır'**
  String get terms5Title;

  /// No description provided for @terms5Body.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault yalnızca yasal amaçlarla kullanılabilir. Gönderdiğiniz içeriğin yasalara uygunluğundan tamamen siz sorumlusunuz. İçerik şifreli olduğu için denetlenemez; bu nedenle hizmetin kötüye kullanımından doğan her türlü hukuki ve cezai sorumluluk gönderen kullanıcıya aittir.'**
  String get terms5Body;

  /// No description provided for @terms6Title.
  ///
  /// In tr, this message translates to:
  /// **'Hizmet \"Olduğu Gibi\" Sunulur'**
  String get terms6Title;

  /// No description provided for @terms6Body.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault, herhangi bir garanti verilmeksizin \"olduğu gibi\" sunulur. Hizmette kesinti, gecikme veya hata olabilir. Hizmetin kesintisiz veya hatasız çalışacağı garanti edilmez.'**
  String get terms6Body;

  /// No description provided for @termsFooter.
  ///
  /// In tr, this message translates to:
  /// **'Bu metin genel bir bilgilendirme niteliğindedir ve hukuki tavsiye yerine geçmez.'**
  String get termsFooter;

  /// No description provided for @svcFolderNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Klasör bulunamadı.'**
  String get svcFolderNotFound;

  /// No description provided for @svcFolderEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Klasör boş görünüyor.'**
  String get svcFolderEmpty;

  /// No description provided for @svcFileEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Dosya boş görünüyor, başka bir dosya seçin.'**
  String get svcFileEmpty;

  /// No description provided for @svcPackaging.
  ///
  /// In tr, this message translates to:
  /// **'Klasör paketleniyor (sıkıştırmasız zip)...'**
  String get svcPackaging;

  /// No description provided for @svcPackDone.
  ///
  /// In tr, this message translates to:
  /// **'✅ Paketleme tamamlandı.'**
  String get svcPackDone;

  /// No description provided for @svcGenKey.
  ///
  /// In tr, this message translates to:
  /// **'AES-256 anahtarı cihazınızda üretiliyor...'**
  String get svcGenKey;

  /// No description provided for @svcInitUpload.
  ///
  /// In tr, this message translates to:
  /// **'Yükleme oturumu başlatılıyor...'**
  String get svcInitUpload;

  /// No description provided for @svcEncrypting.
  ///
  /// In tr, this message translates to:
  /// **'Şifreleniyor ve yükleniyor (AES-256-GCM, 5 MB parçalar)...'**
  String get svcEncrypting;

  /// No description provided for @svcUploadDone.
  ///
  /// In tr, this message translates to:
  /// **'✅ Şifreli yükleme tamamlandı.'**
  String get svcUploadDone;

  /// No description provided for @svcSendingEmail.
  ///
  /// In tr, this message translates to:
  /// **'İndirme linki e-posta ile gönderiliyor...'**
  String get svcSendingEmail;

  /// No description provided for @svcEmailSent.
  ///
  /// In tr, this message translates to:
  /// **'✅ E-posta gönderildi → {email}'**
  String svcEmailSent(String email);

  /// No description provided for @svcEmailFailed.
  ///
  /// In tr, this message translates to:
  /// **'⚠ E-posta gönderilemedi — linki manuel paylaşabilirsiniz.'**
  String get svcEmailFailed;

  /// No description provided for @svcInitFailed.
  ///
  /// In tr, this message translates to:
  /// **'Yükleme başlatılamadı.'**
  String get svcInitFailed;

  /// No description provided for @svcChunkFailed.
  ///
  /// In tr, this message translates to:
  /// **'Parça yüklenemedi.'**
  String get svcChunkFailed;

  /// No description provided for @svcFinalizeFailed.
  ///
  /// In tr, this message translates to:
  /// **'Yükleme tamamlanamadı.'**
  String get svcFinalizeFailed;

  /// No description provided for @svcTimeout.
  ///
  /// In tr, this message translates to:
  /// **'Sunucuya bağlanılamadı (zaman aşımı). İnternet bağlantınızı kontrol edin.'**
  String get svcTimeout;

  /// No description provided for @svcConnError.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı kurulamadı. İnternet bağlantınızı kontrol edin.'**
  String get svcConnError;

  /// No description provided for @svcUnexpected.
  ///
  /// In tr, this message translates to:
  /// **'Beklenmeyen bir hata oluştu: {error}'**
  String svcUnexpected(String error);

  /// No description provided for @dlsvcInvalidKey.
  ///
  /// In tr, this message translates to:
  /// **'Geçersiz şifreleme anahtarı.'**
  String get dlsvcInvalidKey;

  /// No description provided for @dlsvcDecryptFailed.
  ///
  /// In tr, this message translates to:
  /// **'Şifre çözme başarısız: anahtar hatalı veya dosya bozuk olabilir.'**
  String get dlsvcDecryptFailed;

  /// No description provided for @dlsvcLinkExpired.
  ///
  /// In tr, this message translates to:
  /// **'Bu link artık geçerli değil — ya kullanıldı, ya da süresi doldu.'**
  String get dlsvcLinkExpired;

  /// No description provided for @dlsvcDownloadFailed.
  ///
  /// In tr, this message translates to:
  /// **'İndirme başarısız (HTTP {code}).'**
  String dlsvcDownloadFailed(String code);

  /// No description provided for @dlsvcTimeout.
  ///
  /// In tr, this message translates to:
  /// **'Sunucuya bağlanılamadı (zaman aşımı).'**
  String get dlsvcTimeout;

  /// No description provided for @dlsvcConnError.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı kurulamadı. İnternet bağlantınızı kontrol edin.'**
  String get dlsvcConnError;

  /// No description provided for @dlsvcUnexpected.
  ///
  /// In tr, this message translates to:
  /// **'Beklenmeyen bir hata oluştu: {error}'**
  String dlsvcUnexpected(String error);

  /// No description provided for @dlsvcDefaultFile.
  ///
  /// In tr, this message translates to:
  /// **'dosya'**
  String get dlsvcDefaultFile;

  /// No description provided for @authRegisterFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt başarısız.'**
  String get authRegisterFailed;

  /// No description provided for @authLoginFailed.
  ///
  /// In tr, this message translates to:
  /// **'Giriş başarısız.'**
  String get authLoginFailed;

  /// No description provided for @authRecoverFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kurtarma başarısız.'**
  String get authRecoverFailed;

  /// No description provided for @authDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Hesap silme başarısız.'**
  String get authDeleteFailed;

  /// No description provided for @authUnexpectedRetry.
  ///
  /// In tr, this message translates to:
  /// **'Beklenmeyen bir hata oluştu. Lütfen tekrar deneyin.'**
  String get authUnexpectedRetry;

  /// No description provided for @cphTitle.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli Mesaj'**
  String get cphTitle;

  /// No description provided for @cphModeEncrypt.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj Şifrele'**
  String get cphModeEncrypt;

  /// No description provided for @cphModeDecrypt.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj Çöz'**
  String get cphModeDecrypt;

  /// No description provided for @cphIntro.
  ///
  /// In tr, this message translates to:
  /// **'Mesajınız tamamen bu cihazda şifrelenir. Sunucuya hiçbir şey gönderilmez. Şifreli metni kopyalayıp istediğiniz uygulamadan (WhatsApp, SMS...) iletin; alıcı aynı parolayla çözer.'**
  String get cphIntro;

  /// No description provided for @cphPlainLabel.
  ///
  /// In tr, this message translates to:
  /// **'Şifrelenecek mesaj'**
  String get cphPlainLabel;

  /// No description provided for @cphPlainHint.
  ///
  /// In tr, this message translates to:
  /// **'Gizli mesajınızı buraya yazın...'**
  String get cphPlainHint;

  /// No description provided for @cphPassword.
  ///
  /// In tr, this message translates to:
  /// **'Parola'**
  String get cphPassword;

  /// No description provided for @cphPasswordHint.
  ///
  /// In tr, this message translates to:
  /// **'Alıcıyla paylaştığınız parola'**
  String get cphPasswordHint;

  /// No description provided for @cphEncryptBtn.
  ///
  /// In tr, this message translates to:
  /// **'Şifrele'**
  String get cphEncryptBtn;

  /// No description provided for @cphDecryptBtn.
  ///
  /// In tr, this message translates to:
  /// **'Çöz'**
  String get cphDecryptBtn;

  /// No description provided for @cphEncryptedLabel.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli mesaj (kopyalayıp iletin)'**
  String get cphEncryptedLabel;

  /// No description provided for @cphPasteLabel.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli mesajı buraya yapıştırın'**
  String get cphPasteLabel;

  /// No description provided for @cphPasteHint.
  ///
  /// In tr, this message translates to:
  /// **'Size gelen şifreli bloğu yapıştırın...'**
  String get cphPasteHint;

  /// No description provided for @cphResultLabel.
  ///
  /// In tr, this message translates to:
  /// **'Çözülen mesaj'**
  String get cphResultLabel;

  /// No description provided for @cphCopy.
  ///
  /// In tr, this message translates to:
  /// **'Kopyala'**
  String get cphCopy;

  /// No description provided for @cphPaste.
  ///
  /// In tr, this message translates to:
  /// **'Yapıştır'**
  String get cphPaste;

  /// No description provided for @cphCopied.
  ///
  /// In tr, this message translates to:
  /// **'Panoya kopyalandı.'**
  String get cphCopied;

  /// No description provided for @cphErrEmptyText.
  ///
  /// In tr, this message translates to:
  /// **'Şifrelenecek bir mesaj girin.'**
  String get cphErrEmptyText;

  /// No description provided for @cphErrEmptyPwd.
  ///
  /// In tr, this message translates to:
  /// **'Bir parola girin.'**
  String get cphErrEmptyPwd;

  /// No description provided for @cphErrEmptyEncrypted.
  ///
  /// In tr, this message translates to:
  /// **'Çözülecek şifreli mesajı yapıştırın.'**
  String get cphErrEmptyEncrypted;

  /// No description provided for @cphErrDecrypt.
  ///
  /// In tr, this message translates to:
  /// **'Çözme başarısız. Parola yanlış veya mesaj bozuk olabilir.'**
  String get cphErrDecrypt;

  /// No description provided for @cphPwdWarning.
  ///
  /// In tr, this message translates to:
  /// **'Parolayı alıcıya güvenli bir kanaldan (yüz yüze, telefon) iletin. Parola olmadan mesaj çözülemez.'**
  String get cphPwdWarning;

  /// No description provided for @infoFeatures.
  ///
  /// In tr, this message translates to:
  /// **'UYGULAMA ÖZELLİKLERİ'**
  String get infoFeatures;

  /// No description provided for @infoFeatCipherTitle.
  ///
  /// In tr, this message translates to:
  /// **'Çevrimdışı Şifreli Mesaj'**
  String get infoFeatCipherTitle;

  /// No description provided for @infoFeatCipherDesc.
  ///
  /// In tr, this message translates to:
  /// **'Mesajınızı parolayla şifreleyip kopyalayın; WhatsApp, SMS veya istediğiniz uygulamadan iletin. Şifreleme tamamen cihazınızda yapılır — mesaj sunucuya HİÇ gönderilmez. Alıcı, sizinle paylaştığınız parolayla mesajı uygulamada çözer. Bu özellik yalnızca mobil uygulamada vardır.'**
  String get infoFeatCipherDesc;

  /// No description provided for @infoFeatFileTitle.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli Dosya ve Klasör Paylaşımı'**
  String get infoFeatFileTitle;

  /// No description provided for @infoFeatFileDesc.
  ///
  /// In tr, this message translates to:
  /// **'Dosya ve klasörlerinizi uçtan uca şifreleyerek tek kullanımlık linkle paylaşın. Link bir kez kullanılır ve kısa sürede otomatik silinir.'**
  String get infoFeatFileDesc;

  /// No description provided for @infoFeatTextTitle.
  ///
  /// In tr, this message translates to:
  /// **'Şifreli Metin Paylaşımı'**
  String get infoFeatTextTitle;

  /// No description provided for @infoFeatTextDesc.
  ///
  /// In tr, this message translates to:
  /// **'Uzun metinleri şifreleyip link olarak paylaşın; alıcı linke tıklayarak güvenle okur.'**
  String get infoFeatTextDesc;

  /// No description provided for @infoFeatLangTitle.
  ///
  /// In tr, this message translates to:
  /// **'4 Dil Desteği'**
  String get infoFeatLangTitle;

  /// No description provided for @infoFeatLangDesc.
  ///
  /// In tr, this message translates to:
  /// **'Türkçe, İngilizce, Almanca ve Rusça arayüz.'**
  String get infoFeatLangDesc;

  /// No description provided for @recoverTitle.
  ///
  /// In tr, this message translates to:
  /// **'Şifremi Unuttum'**
  String get recoverTitle;

  /// No description provided for @recoverLink.
  ///
  /// In tr, this message translates to:
  /// **'Şifremi unuttum'**
  String get recoverLink;

  /// No description provided for @recoverIntro.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınızı kurtarmak için kullanıcı adınızı, kayıt sırasında size verilen kurtarma kodunu ve yeni şifrenizi girin.'**
  String get recoverIntro;

  /// No description provided for @recoverUsername.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı adı'**
  String get recoverUsername;

  /// No description provided for @recoverToken.
  ///
  /// In tr, this message translates to:
  /// **'Kurtarma kodu'**
  String get recoverToken;

  /// No description provided for @recoverTokenHint.
  ///
  /// In tr, this message translates to:
  /// **'Kayıtta size verilen kod'**
  String get recoverTokenHint;

  /// No description provided for @recoverNewPassword.
  ///
  /// In tr, this message translates to:
  /// **'Yeni şifre'**
  String get recoverNewPassword;

  /// No description provided for @recoverNewPasswordHint.
  ///
  /// In tr, this message translates to:
  /// **'En az 8 karakter'**
  String get recoverNewPasswordHint;

  /// No description provided for @recoverButton.
  ///
  /// In tr, this message translates to:
  /// **'Şifreyi Sıfırla'**
  String get recoverButton;

  /// No description provided for @recoverSuccess.
  ///
  /// In tr, this message translates to:
  /// **'Şifreniz başarıyla sıfırlandı. Yeni şifrenizle giriş yapabilirsiniz.'**
  String get recoverSuccess;

  /// No description provided for @recoverErrEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen tüm alanları doldurun.'**
  String get recoverErrEmpty;

  /// No description provided for @recoverErrShortPwd.
  ///
  /// In tr, this message translates to:
  /// **'Yeni şifre en az 8 karakter olmalıdır.'**
  String get recoverErrShortPwd;

  /// No description provided for @recoverBackToLogin.
  ///
  /// In tr, this message translates to:
  /// **'Girişe dön'**
  String get recoverBackToLogin;

  /// No description provided for @termsH1.
  ///
  /// In tr, this message translates to:
  /// **'1. TEKNİK SAKLAMA VE SİLİNME KOŞULLARI'**
  String get termsH1;

  /// No description provided for @termsP1.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault bir bulut depolama, kalıcı arşiv veya veri yedekleme (backup) hizmeti DEĞİLDİR. Hizmete yüklenen tüm şifreli içerikler, alıcı tarafından indirildiği anda veya indirilmediği takdirde belirlenen süre (varsayılan 1 saat) dolduğunda sistemden otomatik, kalıcı ve geri döndürülemez şekilde silinir. Dosyaların asıl kopyalarının güvenli bir şekilde saklanması ve yedeklenmesi tamamen Kullanıcının kendi sorumluluğundadır. Süresi dolduğu için veya teknik nedenlerle silinen verilerin kurtarılmamasından doğan zararlardan Şirket sorumlu tutulamaz.'**
  String get termsP1;

  /// No description provided for @termsH2.
  ///
  /// In tr, this message translates to:
  /// **'2. \"SIFIR BİLGİ\" (ZERO-KNOWLEDGE) VE ŞİFRE KAYBI'**
  String get termsH2;

  /// No description provided for @termsP2.
  ///
  /// In tr, this message translates to:
  /// **'Hizmetin kriptografik yapısı uyarınca şifreleme anahtarları yalnızca Kullanıcı cihazında üretilir ve sunucuya iletilmez. Kullanıcının şifresini veya indirme linkine ait anahtarı kaybetmesi, unutması veya üçüncü kişilere kaptırması durumunda; Şirketin bu şifreyi yenileme, değiştirme veya şifreli dosyayı açıp Kullanıcıya teslim etme yeteneği teknik olarak bulunmamaktadır. Şifre ve anahtar yönetimindeki ihmallerden kaynaklanan veri kayıplarından münhasıran Kullanıcı sorumludur.'**
  String get termsP2;

  /// No description provided for @termsH3.
  ///
  /// In tr, this message translates to:
  /// **'3. HİZMETİN \"OLDUĞU GİBİ\" (AS IS) SUNULMASI'**
  String get termsH3;

  /// No description provided for @termsP3.
  ///
  /// In tr, this message translates to:
  /// **'SecureVault, Türk Borçlar Kanunu Madde 115 ve ilgili mevzuatın izin verdiği en geniş sınırlar dahilinde, Hizmeti \"olduğu gibi\" ve \"mümkün olduğu ölçüde\" esasıyla sunmaktadır. Şirket; Hizmetin kesintisiz, hatasız, siber saldırılardan tamamen ari veya belirli bir amaca uygun olacağına dair sarih veya zımni hiçbir garanti vermemektedir. Google Play Store altyapısından, Cloudflare kesintilerinden, küresel internet omurgasındaki arızalardan veya mücbir sebeplerden kaynaklanan gecikme, veri iletilememe veya erişim sorunlarından Şirketin hukuki veya cezai sorumluluğu bulunmamaktadır.'**
  String get termsP3;

  /// No description provided for @termsH4.
  ///
  /// In tr, this message translates to:
  /// **'4. TÜRK BORÇLAR KANUNU (TBK M. 115) UYARINCA SINIRLAMA'**
  String get termsH4;

  /// No description provided for @termsP4.
  ///
  /// In tr, this message translates to:
  /// **'İşbu sorumluluk reddi metninde yer alan hiçbir hüküm, Şirketin kanundan doğan \"ağır kusur\" veya \"hile\" hallerindeki yasal sorumluluğunu ortadan kaldırmaz veya sınırlandırmaz. Şirketin hafif kusurundan kaynaklanabilecek zararlarda sorumluluğu, Kullanıcının Google Play Store üzerinden Şirkete son 12 ay içinde ödediği toplam abonelik ücreti ile sınırlıdır.'**
  String get termsP4;

  /// No description provided for @regKvkkInfoPrefix.
  ///
  /// In tr, this message translates to:
  /// **'Kişisel verilerinizin işlenmesine ilişkin detaylara '**
  String get regKvkkInfoPrefix;

  /// No description provided for @regKvkkInfoSuffix.
  ///
  /// In tr, this message translates to:
  /// **' üzerinden ulaşabilirsiniz.'**
  String get regKvkkInfoSuffix;

  /// No description provided for @regTransferConsentText.
  ///
  /// In tr, this message translates to:
  /// **'Verilerimin, teknik operasyonların yürütülmesi amacıyla yurt dışı yerleşik altyapı sağlayıcılarında (Cloudflare R2) güvenli şekilde işlenmesine açık rıza veriyorum.'**
  String get regTransferConsentText;

  /// No description provided for @regErrTransferConsent.
  ///
  /// In tr, this message translates to:
  /// **'Yurt dışı veri aktarımı onayını vermeniz gerekmektedir.'**
  String get regErrTransferConsent;

  /// No description provided for @cphPremiumTitle.
  ///
  /// In tr, this message translates to:
  /// **'Premium Özellik'**
  String get cphPremiumTitle;

  /// No description provided for @cphPremiumBody.
  ///
  /// In tr, this message translates to:
  /// **'Çevrimdışı Şifreli Mesaj özelliği yalnızca Premium üyelere özeldir. Premium\'a geçerek bu özelliği ve daha yüksek gönderim limitlerini kullanabilirsiniz.'**
  String get cphPremiumBody;

  /// No description provided for @cphPremiumCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get cphPremiumCancel;

  /// No description provided for @cphPremiumGo.
  ///
  /// In tr, this message translates to:
  /// **'Premium\'a Geç'**
  String get cphPremiumGo;

  /// No description provided for @certTitle.
  ///
  /// In tr, this message translates to:
  /// **'İmha Sertifikası'**
  String get certTitle;

  /// No description provided for @certHomeButton.
  ///
  /// In tr, this message translates to:
  /// **'İmha Sertifikası Sorgula'**
  String get certHomeButton;

  /// No description provided for @certIntro.
  ///
  /// In tr, this message translates to:
  /// **'Gönderdiğiniz dosyanın gerçekten imha edildiğini kriptografik imzalı sertifika ile doğrulayın. İndirme linkini veya kodu yapıştırın.'**
  String get certIntro;

  /// No description provided for @certInputLabel.
  ///
  /// In tr, this message translates to:
  /// **'İndirme linki veya kod'**
  String get certInputLabel;

  /// No description provided for @certInputHint.
  ///
  /// In tr, this message translates to:
  /// **'https://sifreliveritransferi.com/dl/...'**
  String get certInputHint;

  /// No description provided for @certQueryButton.
  ///
  /// In tr, this message translates to:
  /// **'Sertifikayı Sorgula'**
  String get certQueryButton;

  /// No description provided for @certPending.
  ///
  /// In tr, this message translates to:
  /// **'Dosya henüz imha edilmedi — hâlâ aktif (indirilmedi ve süresi dolmadı).'**
  String get certPending;

  /// No description provided for @certDestroyed.
  ///
  /// In tr, this message translates to:
  /// **'Bu dosya kalıcı olarak imha edildi.'**
  String get certDestroyed;

  /// No description provided for @certNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Bu linke ait imha kaydı bulunamadı. Kayıtlar 90 gün saklanır.'**
  String get certNotFound;

  /// No description provided for @certErrInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Link veya kod tanınamadı. İndirme linkini olduğu gibi yapıştırın.'**
  String get certErrInvalid;

  /// No description provided for @certErrNetwork.
  ///
  /// In tr, this message translates to:
  /// **'Sorgu başarısız. Bağlantınızı kontrol edin.'**
  String get certErrNetwork;

  /// No description provided for @certReasonDownloaded.
  ///
  /// In tr, this message translates to:
  /// **'Alıcı tarafından indirildi'**
  String get certReasonDownloaded;

  /// No description provided for @certReasonExpired.
  ///
  /// In tr, this message translates to:
  /// **'Süresi doldu'**
  String get certReasonExpired;

  /// No description provided for @certFieldReason.
  ///
  /// In tr, this message translates to:
  /// **'İmha nedeni'**
  String get certFieldReason;

  /// No description provided for @certFieldUploaded.
  ///
  /// In tr, this message translates to:
  /// **'Yüklenme'**
  String get certFieldUploaded;

  /// No description provided for @certFieldDeleted.
  ///
  /// In tr, this message translates to:
  /// **'İmha'**
  String get certFieldDeleted;

  /// No description provided for @certFieldSize.
  ///
  /// In tr, this message translates to:
  /// **'Boyut'**
  String get certFieldSize;

  /// No description provided for @certFieldSignature.
  ///
  /// In tr, this message translates to:
  /// **'İmza (Ed25519)'**
  String get certFieldSignature;

  /// No description provided for @upVaultLabel.
  ///
  /// In tr, this message translates to:
  /// **'İki Anahtarlı Kasa (Premium)'**
  String get upVaultLabel;

  /// No description provided for @upVaultHint.
  ///
  /// In tr, this message translates to:
  /// **'Anahtar iki parçaya bölünür: Parça 1 linki alıcıya gider, Parça 2 sizde kalır. Alıcı dosyayı ancak siz ikinci parçayı güvenilir bir kanaldan ilettiğinizde açabilir. Bu modda e-posta gönderilmez.'**
  String get upVaultHint;

  /// No description provided for @upVaultLink1.
  ///
  /// In tr, this message translates to:
  /// **'PARÇA 1 — ALICIYA GÖNDERİN'**
  String get upVaultLink1;

  /// No description provided for @upVaultLink2.
  ///
  /// In tr, this message translates to:
  /// **'PARÇA 2 — SİZDE KALIR'**
  String get upVaultLink2;

  /// No description provided for @upVaultShare1.
  ///
  /// In tr, this message translates to:
  /// **'Parça 1\'i Paylaş'**
  String get upVaultShare1;

  /// No description provided for @upVaultShare2.
  ///
  /// In tr, this message translates to:
  /// **'Parça 2\'yi Paylaş'**
  String get upVaultShare2;

  /// No description provided for @upVaultEmailSkipped.
  ///
  /// In tr, this message translates to:
  /// **'E-posta bilerek gönderilmedi — sunucu hiçbir anahtar parçası görmedi.'**
  String get upVaultEmailSkipped;

  /// No description provided for @dlVaultNeeded.
  ///
  /// In tr, this message translates to:
  /// **'Bu dosya İki Anahtarlı Kasa ile korunuyor. Göndericiden aldığınız ikinci parçayı yapıştırın. Parça doğrulanmadan indirme başlamaz — tek kullanımlık hakkınız yanmaz.'**
  String get dlVaultNeeded;

  /// No description provided for @dlVaultShareLabel.
  ///
  /// In tr, this message translates to:
  /// **'İkinci anahtar parçası'**
  String get dlVaultShareLabel;

  /// No description provided for @dlVaultShareHint.
  ///
  /// In tr, this message translates to:
  /// **'k2.… veya linkin tamamı'**
  String get dlVaultShareHint;

  /// No description provided for @dlVaultMismatch.
  ///
  /// In tr, this message translates to:
  /// **'Parçalar eşleşmedi — indirme başlatılmadı. Yanlış parça olabilir ya da aynı parçayı iki kez yapıştırdınız. Hakkınız korundu; doğru parçayla tekrar deneyin.'**
  String get dlVaultMismatch;

  /// No description provided for @dlVaultInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Parça tanınamadı. k1. veya k2. ile başlayan parçayı ya da linkin tamamını yapıştırın.'**
  String get dlVaultInvalid;

  /// No description provided for @upVaultSaveWarning.
  ///
  /// In tr, this message translates to:
  /// **'⚠️ Bu ekrandan ayrılmadan iki linki de kaydedin. Özellikle Parça 2 bir daha gösterilmez — kaybederseniz dosya açılamaz.'**
  String get upVaultSaveWarning;
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
