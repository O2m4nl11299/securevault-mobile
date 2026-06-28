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

  @override
  String get homeTooltipPremium => 'Premium';

  @override
  String get homeTooltipInfo => 'Bilgi ve Güvenlik';

  @override
  String get homeTooltipLogout => 'Çıkış yap';

  @override
  String get homeSiteError => 'Site açılamadı.';

  @override
  String homeLoggedInAs(String username) {
    return 'Giriş yapıldı: $username';
  }

  @override
  String homePlan(String plan) {
    return 'Plan: $plan';
  }

  @override
  String get homeSendFile => 'Dosya Gönder';

  @override
  String get homeSendFolder => 'Klasör Gönder';

  @override
  String get homeEncryptText => 'Metin Şifrele';

  @override
  String get homeDownloadFile => 'Dosya İndir';

  @override
  String get homeDeleteAccount => 'Hesabımı Sil';

  @override
  String get regErrKvkk =>
      'Devam etmek için KVKK Aydınlatma Metni ve Kullanım Sözleşmesi\'ni onaylamanız gerekiyor.';

  @override
  String get regErrTerms =>
      'Devam etmek için Kullanım Şartları ve Sorumluluk Reddi\'ni onaylamanız gerekiyor.';

  @override
  String get regAccountCreated => 'Hesap Oluşturuldu';

  @override
  String get regRecoveryInfo =>
      'Kurtarma kodunuz - bunu güvenli bir yere kaydedin. Şifrenizi unutursanız hesabınıza sadece bu kodla geri dönebilirsiniz ve bu kod bir daha gösterilmeyecek.';

  @override
  String get regSavedReturnLogin => 'Kaydettim, giriş ekranına dön';

  @override
  String get regTitle => 'Kayıt Ol';

  @override
  String get regUsernameLabel => 'Kullanıcı adı (3-32 karakter)';

  @override
  String get regUsernameError => '3-32 karakter olmalı';

  @override
  String get regPasswordLabel => 'Şifre (en az 8 karakter)';

  @override
  String get regPasswordError => 'En az 8 karakter olmalı';

  @override
  String get regIReadAccept => 'Okudum, onaylıyorum: ';

  @override
  String get regKvkkText => 'KVKK Aydınlatma Metni';

  @override
  String get regAnd => ' ve ';

  @override
  String get regAgreementText => 'Kullanım Sözleşmesi';

  @override
  String get regTermsText => 'Kullanım Şartları ve Sorumluluk Reddi';

  @override
  String get regButton => 'Kayıt Ol';

  @override
  String get upErrPickFile => 'Önce bir dosya seçin.';

  @override
  String get upErrEmail => 'Geçerli bir e-posta adresi girin.';

  @override
  String get upShareSubject => 'Şifreli dosya - SecureVault';

  @override
  String get upTitle => 'Dosya Gönder';

  @override
  String get upPickFile => 'Dosya Seç';

  @override
  String get upRecipientEmail => 'Alıcının e-posta adresi';

  @override
  String get upRecipientHelper =>
      'Kayıt amaçlı - dosya bu adrese otomatik gönderilmez,\nlinki bir sonraki ekranda istediğiniz uygulamadan paylaşırsınız.';

  @override
  String get upExtraPwd => 'Ek şifre koruması (opsiyonel)';

  @override
  String get upExtraPwdHelper =>
      'Belirlerseniz, alıcıya bu şifreyi ayrıca iletmeniz\ngerekir. Dosya, şifre girilmeden indirilemez.';

  @override
  String get upEncryptUpload => 'Şifrele ve Yükle';

  @override
  String upMinutes(int count) {
    return '$count dakika';
  }

  @override
  String upHours(int count) {
    return '$count saat';
  }

  @override
  String get upSuccess => 'Dosya şifrelenip yüklendi.';

  @override
  String upEmailSent(String email) {
    return '📧 İndirme linki $email adresine gönderildi.';
  }

  @override
  String get upEmailFailed =>
      '⚠ E-posta gönderilemedi. Linki aşağıdan paylaşabilirsiniz.';

  @override
  String upLinkExpiry(String ttl) {
    return 'Bu link $ttl içinde geçersiz olur ve sadece BİR KEZ kullanılabilir.';
  }

  @override
  String get upExtraPwdWarning =>
      'Ek şifre belirlediniz. Alıcıya bu şifreyi ayrıca (linkten farklı bir kanaldan) iletmeyi unutmayın.';

  @override
  String get upShareLink => 'Linki Paylaş';

  @override
  String get upSendAnother => 'Başka bir dosya gönder';

  @override
  String get premSuccess =>
      '🎉 Premium aktif edildi! Tekrar giriş yaparak yeni limitlerinizi görebilirsiniz.';

  @override
  String get premTitle => 'Premium';

  @override
  String get premHeader => 'SecureVault Premium';

  @override
  String get premMonthlySub => 'Aylık yenilenen abonelik';

  @override
  String get premBenefit1 => '2 GB dosya boyutu limiti';

  @override
  String get premBenefit2 => 'Günde 20 gönderim';

  @override
  String get premBenefit3 => 'Uçtan uca şifreli, sınırsız güvenlik';

  @override
  String get premBenefit4 => 'Öncelikli destek';

  @override
  String get premLoadingStore => 'Mağaza bilgileri yükleniyor...';

  @override
  String get premStoreUnavailable =>
      'Mağaza şu an kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get premProductUnavailable =>
      'Premium ürün henüz hazır değil. Lütfen daha sonra tekrar deneyin.';

  @override
  String premBuyButton(String price) {
    return '$price / ay - Premium Ol';
  }

  @override
  String get premRestore => 'Satın alımları geri yükle';

  @override
  String get premAutoRenewInfo =>
      'Abonelik, dönem sonunda otomatik yenilenir. Google Play hesabınızdan istediğiniz zaman iptal edebilirsiniz.';

  @override
  String get infoTitle => 'Bilgi ve Güvenlik';

  @override
  String get infoSecFlow => 'GÜVENLİK AKIŞI';

  @override
  String get infoFlow1 =>
      'Dosya cihazınızda AES-256-GCM ile parçalar halinde şifrelenir.';

  @override
  String get infoFlow2 =>
      'Şifreli veri TLS üzerinden sunucuya yüklenir — anahtar gönderilmez.';

  @override
  String get infoFlow3 =>
      'Sunucu token üretir, indirme linki cihazda oluşturulur.';

  @override
  String get infoFlow4 =>
      'Alıcı linke tıklar — anahtar (#KEY) asla sunucuya gitmez.';

  @override
  String get infoFlow5 =>
      'Şifreli dosya stream olarak indirilir, anında çözülür — düşük RAM.';

  @override
  String get infoFlow6 =>
      'Token atomik olarak silinir, dosya tek kullanımlıktır.';

  @override
  String get infoCrypto => 'KRİPTOGRAFİ';

  @override
  String get infoKeyAlgo => 'Algoritma';

  @override
  String get infoKeyQuantum => 'Kuantum Direnci';

  @override
  String get infoValYes => 'Var';

  @override
  String get infoKeyKey => 'Anahtar';

  @override
  String get infoKeyNonce => 'Nonce / IV';

  @override
  String get infoValNonce => '96-bit CSPRNG (her parça)';

  @override
  String get infoKeyAuthTag => 'Auth Tag';

  @override
  String get infoValAuthTag => '128-bit (her parça)';

  @override
  String get infoKeyTransport => 'Transport';

  @override
  String get infoKeyFileLimit => 'Dosya Limitiniz';

  @override
  String get infoKeyTokenLife => 'Token Ömrü';

  @override
  String get infoValTokenLife => '1 saat';

  @override
  String get infoKeyUsage => 'Kullanım';

  @override
  String get infoValOnce => 'Tek sefer';

  @override
  String get infoKeyServerKey => 'Sunucu Anahtar Erişimi';

  @override
  String get infoValNever => 'Asla';

  @override
  String get infoWhy => 'NEDEN SECUREVAULT?';

  @override
  String get infoWhy1Title => 'Sıfır Bilgi';

  @override
  String get infoWhy1Desc =>
      'Dosya cihazınızda şifrelenir. Sunucu içeriği asla görmez.';

  @override
  String get infoWhy2Title => 'Tek Kullanım';

  @override
  String get infoWhy2Desc => 'İndirildikten sonra token atomik olarak silinir.';

  @override
  String get infoWhy3Title => 'Ek Şifre';

  @override
  String get infoWhy3Desc =>
      'İkinci güvenlik katmanı — alıcıya ayrı kanaldan iletin.';

  @override
  String get infoWhy4Title => 'Cloudflare R2';

  @override
  String get infoWhy4Desc => 'Küresel CDN altyapısı, sıfır egress ücreti.';

  @override
  String get infoWhy5Title => 'Kuantum Dirençli';

  @override
  String get infoWhy5Desc =>
      'AES-256-GCM simetrik şifrelemesi, kuantum bilgisayarlara karşı da güvenli kabul edilir. Anahtarlar cihazınızda üretilir, ağ üzerinden asimetrik anahtar değişimi yapılmaz.';

  @override
  String get infoVirus => 'VİRÜS TARAMASI HAKKINDA';

  @override
  String get infoVirus1Title => 'Neden Tarama Yok?';

  @override
  String get infoVirus1Desc =>
      'Zero-knowledge mimarisi gereği sunucu şifreli dosyanın içeriğini göremez, bu yüzden virüs taraması yapamaz.';

  @override
  String get infoVirus2Title => 'Önerimiz';

  @override
  String get infoVirus2Desc =>
      'İndirdiğiniz dosyaları kendi antivirüs yazılımınızla taramanızı öneririz.';

  @override
  String get infoWhoFor => 'KİMLER İÇİN?';

  @override
  String get infoWho1Title => 'Avukatlar ve Noterler';

  @override
  String get infoWho1Desc => 'Müvekkil belgelerini güvenle gönderin.';

  @override
  String get infoWho2Title => 'Muhasebeciler';

  @override
  String get infoWho2Desc => 'Finansal dökümanları güvenli paylaşın.';

  @override
  String get infoWho3Title => 'İnsan Kaynakları';

  @override
  String get infoWho3Desc => 'Maaş bordrosu ve sözleşmeler.';

  @override
  String get infoWho4Title => 'Sağlık Profesyonelleri';

  @override
  String get infoWho4Desc => 'Hasta raporu ve test sonuçları.';

  @override
  String get infoWho5Title => 'Girişimler';

  @override
  String get infoWho5Desc => 'Yatırımcıya sunulan gizli dokümanlar.';

  @override
  String get infoWho6Title => 'Bireyler';

  @override
  String get infoWho6Desc => 'Kimlik fotokopisi, pasaport, banka belgesi.';

  @override
  String get infoDisclaimer => 'SORUMLULUK REDDİ';

  @override
  String get infoDisclaimerText =>
      'SecureVault geçici bir aktarım aracıdır, kalıcı depolama değildir. Dosyalar kısa süre sonra otomatik silinir; içeriğe erişemeyiz ve veri kaybından sorumlu tutulamayız. Önemli dosyalarınızın yedeğini kendiniz saklayın.';

  @override
  String get infoReadTerms => 'Kullanım Şartlarını Oku';
}
