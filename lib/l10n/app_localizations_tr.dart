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

  @override
  String get txtErrEmpty => 'Şifrelenecek metni girin.';

  @override
  String get txtShareSubject => 'Şifreli metin - SecureVault';

  @override
  String get txtTitle => 'Metin Şifrele';

  @override
  String get txtLabel => 'Şifrelenecek metin';

  @override
  String get txtHint =>
      'Şifrelemek istediğiniz metni buraya yazın veya yapıştırın...';

  @override
  String txtCharCount(int count) {
    return '$count karakter';
  }

  @override
  String get txtRecipientHelper =>
      'Kayıt amaçlı - linki bir sonraki ekranda paylaşırsınız.';

  @override
  String get txtExtraPwdHelper =>
      'Belirlerseniz, alıcıya bu şifreyi ayrıca iletmeniz gerekir.';

  @override
  String get txtSuccess => 'Metin şifrelenip yüklendi.';

  @override
  String get txtExtraPwdWarning =>
      'Ek şifre belirlediniz. Alıcıya bu şifreyi ayrıca iletmeyi unutmayın.';

  @override
  String get txtEncryptAnother => 'Başka bir metin şifrele';

  @override
  String get fldErrPick => 'Önce bir klasör seçin.';

  @override
  String get fldShareSubject => 'Şifreli klasör - SecureVault';

  @override
  String get fldTitle => 'Klasör Gönder';

  @override
  String get fldDefaultName => 'klasör';

  @override
  String get fldPick => 'Klasör Seç';

  @override
  String get fldDescription =>
      'Seçtiğiniz klasör, içindeki tüm dosyalarla birlikte tek bir .zip dosyasında toplanıp şifrelenir. Alıcı, inen zip dosyasını kendi cihazında açar.';

  @override
  String get fldRecipientHelper =>
      'İndirme linki bu adrese otomatik gönderilir.';

  @override
  String get fldPackaging => 'Klasör paketleniyor ve şifreleniyor...';

  @override
  String get fldPackButton => 'Paketle, Şifrele ve Gönder';

  @override
  String get fldSuccess => 'Klasör paketlenip şifrelendi ve yüklendi.';

  @override
  String get fldSendAnother => 'Başka bir klasör gönder';

  @override
  String get dlErrInvalid => 'Geçersiz veya tanınmayan SecureVault linki.';

  @override
  String get dlErrPwdProtected =>
      'Bu link ek şifre korumalı — mobil uygulamada bu özellik henüz desteklenmiyor. Linki bir tarayıcıda açın.';

  @override
  String dlSaved(String path) {
    return 'Kaydedildi: $path';
  }

  @override
  String dlSaveFailed(String error) {
    return 'Kaydetme başarısız: $error';
  }

  @override
  String get dlTitle => 'Dosya İndir';

  @override
  String get dlLinkLabel => 'SecureVault linki';

  @override
  String get dlPasteTooltip => 'Panodan yapıştır';

  @override
  String dlDownloading(String percent) {
    return 'İndiriliyor ve şifresi çözülüyor... %$percent';
  }

  @override
  String get dlButton => 'İndir ve Şifresini Çöz';

  @override
  String get dlNote =>
      'Not: link tek kullanımlıktır — bir kez indirildikten sonra tekrar çalışmaz.';

  @override
  String dlSuccess(String fileName) {
    return '$fileName\nşifresi çözülerek kaydedildi.';
  }

  @override
  String get dlSaveToDevice => 'Cihaza Kaydet';

  @override
  String get dlShare => 'Paylaş';

  @override
  String get dlLargeFileNote =>
      'Dosya büyük olduğu için doğrudan kaydetme yerine paylaşım menüsünü kullanın (örn. bir dosya yöneticisine veya Drive\'a).';

  @override
  String get dlDownloadAnother => 'Başka bir link indir';

  @override
  String get delErrConfirm => 'Lütfen önce onay kutusunu işaretleyin.';

  @override
  String get delErrPwd => 'Şifreni gir.';

  @override
  String get delDeleted => 'Hesabın kalıcı olarak silindi.';

  @override
  String get delTitle => 'Hesabı Sil';

  @override
  String get delIrreversible => 'Bu işlem geri alınamaz.';

  @override
  String get delExplanation =>
      'Hesabın ve tüm bilgilerin (kullanıcı adı, şifre hash\'i, kurtarma kodu) kalıcı olarak silinir. Bu işlemden sonra aynı kullanıcı adıyla tekrar giriş yapamazsın.';

  @override
  String get delPwdLabel => 'Şifren (onay için)';

  @override
  String get delConfirmCheck => 'Bunun geri alınamaz olduğunu anlıyorum.';

  @override
  String get delButton => 'Hesabımı Kalıcı Olarak Sil';

  @override
  String get sozTitle => 'Kullanım Sözleşmesi';

  @override
  String get sozLastUpdate => 'Son güncelleme: Haziran 2026';

  @override
  String get sozH1 => '1. TARAFLAR VE KABUL';

  @override
  String get sozP1 =>
      'İşbu Kullanım Şartları ve Hizmet Sözleşmesi (\"Sözleşme\"), Fatih Göktürk (\"Şirket\") ile SecureVault mobil uygulaması ve sifreliveritransferi.com web sitesi (\"Hizmet\") üzerinden sunulan uçtan uca şifreli geçici veri aktarım servisinden yararlanan kullanıcı (\"Kullanıcı\") arasında akdedilmiştir. Hizmeti kullanmaya başlayarak, işbu Sözleşme\'deki tüm şartları peşinen kabul etmiş sayılırsınız.';

  @override
  String get sozH2 => '2. HİZMETİN TANIMI VE MİMARİSİ';

  @override
  String get sozP2 =>
      'SecureVault, istemci taraflı (client-side) sıfır bilgi (zero-knowledge) mimarisine sahip bir geçici veri aktarım aracıdır. Hizmet kapsamında:\n• Kullanıcı tarafından yüklenen dosyalar ve metinler, sunucuya gönderilmeden ÖNCE Kullanıcı\'nın kendi cihazında AES-256-GCM algoritması ile şifrelenir.\n• Şifre çözme anahtarı (key) hiçbir koşulda Şirket sunucularına iletilmez, saklanmaz veya işlenmez.\n• Şirket, sunucularında barındırılan şifreli verilerin içeriğini görüntüleyemez, okuyamaz, değiştiremez veya herhangi bir veri kaybı durumunda bu verileri geri kurtaramaz.';

  @override
  String get sozH3 => '3. ABONELİK MODELİ VE ÖDEME KOŞULLARI';

  @override
  String get sozP3 =>
      'Hizmet, Ücretsiz (Free) ve Premium olmak üzere iki farklı kullanım seviyesiyle sunulmaktadır:\n• Ücretsiz Plan: Tek seferde maksimum 250 MB dosya boyutu ve günde en fazla 4 gönderim limiti ile sınırlıdır.\n• Premium Plan (Abonelik): Tek seferde maksimum 2 GB dosya boyutu ve günde 20 gönderim limiti sağlar.\n\nÖdeme Altyapısı: Premium plan üyelikleri ve tahsilat işlemleri tamamen Google Play Store (Google LLC) uygulama içi satın alım ve abonelik altyapısı üzerinden gerçekleştirilir. Şirket, Kullanıcıların kredi kartı, banka hesap bilgileri veya doğrudan finansal verilerini kendi sunucularında işlemez ve saklamaz. Abonelik ücretleri, yenileme periyotları ve iptal süreçleri tamamen Google Play Store politikalarına tabidir. Kullanıcı, aboneliğini dilediği zaman Google Play hesap ayarları üzerinden iptal etme hakkına sahiptir.';

  @override
  String get sozH4 => '4. KULLANIM KOŞULLARI VE YASAKLAR';

  @override
  String get sozP4 =>
      'SecureVault mimari gereği şifreli içerikleri denetleyemese de, Kullanıcı Hizmeti hukuka uygun amaçlarla kullanmayı taahhüt eder. Aşağıdaki içeriklerin aktarılması veya Hizmetin bu amaçlarla kullanılması kesinlikle yasaktır:\n• Yürürlükteki yasalara aykırı, suç teşkil eden veya yasa dışı faaliyetleri kolaylaştıran içerikler\n• Telif hakları, patent, ticari sır veya diğer fikri mülkiyet haklarını ihlal eden dosyalar\n• Kötü amaçlı yazılım (malware), virüs veya hedef sistemlere zarar verme amaçlı kodlar\n• Kişilerin rızası dışında elde edilmiş kişisel veriler veya mahrem içerikler\n\nYasal makamlardan gelen usulüne uygun talepler doğrultusunda, Şirket elinde bulunan giriş erişim kayıtlarını (bkz. KVKK Aydınlatma Metni) adli/idari mercilerle paylaşmakla yükümlüdür. Şifreli dosya/metin içeriği ise mimari gereği Şirket tarafından hiçbir koşulda görüntülenemediğinden bu paylaşıma konu edilemez.';

  @override
  String get sozH5 => '5. SÖZLEŞME VE HİZMET DEĞİŞİKLİKLERİ';

  @override
  String get sozP5 =>
      'Şirket, Hizmetin teknik gereksinimleri, Google Play Store politika değişiklikleri veya yasal mevzuata uyum amacıyla işbu Sözleşme şartlarında veya plan limitlerinde değişiklik yapabilir. Kullanıcı aleyhine esaslı değişiklik barındıran güncellemeler, yürürlüğe girmeden en az 7 gün önce uygulama içinden veya web sitesinden Kullanıcılara makul bir şekilde bildirilir. Kullanıcı, yeni şartları kabul etmemesi halinde Hizmet kullanımını sonlandırma ve Google Play üzerinden aboneliğini iptal etme hakkına sahiptir.';

  @override
  String get sozH6 => '6. HİZMET DEĞİŞİKLİKLERİ';

  @override
  String get sozP6 =>
      'SecureVault, hizmet koşullarını önceden bildirimde bulunmaksızın değiştirme hakkını saklı tutar.';

  @override
  String get sozH7 => '7. HESAP SİLME';

  @override
  String get sozP7 =>
      'Hesabınızı istediğiniz zaman silebilirsiniz. Silme işlemi tüm verilerinizi kalıcı olarak kaldırır.';

  @override
  String get sozH8 => '8. İLETİŞİM';

  @override
  String get sozP8 => 'Sorularınız için: no-reply@sifreliveritransferi.com';

  @override
  String get kvkkTitle => 'KVKK Aydınlatma Metni';

  @override
  String get kvkkH1 => '1. VERİ SORUMLUSU';

  @override
  String get kvkkP1 =>
      '6698 sayılı Kişisel Verilerin Korunması Kanunu (\"KVKK\") uyarınca, Fatih Göktürk (\"SecureVault\" veya \"Şirket\"), aşağıda belirtilen sınırlı kişisel verilerinizi kanuna ve dürüstlük kurallarına uygun olarak işlemektedir.';

  @override
  String get kvkkH2 => '2. İŞLENEN KİŞİSEL VERİLER VE TEKNİK GÜVENLİK';

  @override
  String get kvkkP2a =>
      'Sistemimiz sıfır bilgi (zero-knowledge) mimarisi ile tasarlanmış olup, kişisel verilerinizin asgari düzeyde tutulması amaçlanmıştır. Bu doğrultuda işlenen verileriniz kategorik olarak şunlardır:';

  @override
  String get kvkkP2b =>
      '• Kullanıcı Adı / Hesap Bilgisi — Geri döndürülemez şekilde SHA-256 algoritması ile hash\'lenerek saklanır; orijinal metin sunucuda tutulmaz. Saklama süresi: hesap aktif olduğu sürece; 90 gün inaktiflikte otomatik silinir.\n• Hesap Şifresi — Argon2id kriptografik fonksiyonu ile hash\'lenerek saklanır; düz metin şifreniz asla sunucuya ulaşmaz. Saklama süresi: hesap silinene kadar.\n• IP Adresi (Oturum Güvenliği) — Eşzamanlı oturum/IP doğrulaması amacıyla SHA-256 ile hash\'lenerek bellek içi veri tabanında (Redis) tutulur. Saklama süresi: en fazla 24 saat, sonra otomatik ve kalıcı olarak silinir.\n• Giriş Erişim Kaydı (IP + Hesap + Zaman) — Hizmetin kötüye kullanımının önlenmesi, caydırıcılık sağlanması ve yetkili adli/idari makamların yasal talebi halinde paylaşılabilmesi amacıyla; hesabınıza yapılan girişlerde IP adresiniz (düz metin), hesabınızın geri döndürülemez hash değeri ve giriş zamanı ayrı bir güvenlik kaydında tutulur. Saklama süresi: 90 gün (3 ay), sonrasında otomatik olarak kalıcı şekilde silinir.\n• Alıcı E-posta Adresi — Yalnızca Kullanıcı talebiyle indirme linkinin otomatik e-posta olarak iletilmesi amacıyla anlık işlenir; veri tabanına kaydedilmez, anında imha edilir.\n• Abonelik ve Ödeme Verisi — Ödemeler Google Play üzerinden yapıldığından finansal verileriniz bizde tutulmaz; yalnızca Google tarafından üretilen abonelik durum doğrulama jetonları (token) ve üyelik seviyesi bilgisi işlenir. Saklama süresi: abonelik süresince ve yasal mali yükümlülükler boyunca.\n• Dosya İçeriği — Kişisel veri olarak kabul edilmemekle birlikte, yüklenen dosyalar sunucuya ulaşmadan önce cihazınızda şifrelenir; Şirket içeriğe erişemez. Saklama süresi: indirildiği an veya indirilmezse maksimum 1 saat içinde kalıcı olarak silinir.';

  @override
  String get kvkkH3 =>
      '3. KİŞİSEL VERİLERİN İŞLENME AMAÇLARI VE HUKUKİ SEBEPLERİ';

  @override
  String get kvkkP3 =>
      'Kişisel verileriniz, KVKK m. 5/2 uyarınca aşağıdaki hukuki sebeplere dayalı olarak işlenmektedir:\n• Sözleşmenin Kurulması ve İfası (m.5/2-c): Kullanıcı hesabının oluşturulması, Premium abonelik hizmetinin Google Play Store entegrasyonu ile sunulabilmesi ve dosya aktarım hizmetinin yürütülmesi.\n• Veri Sorumlusunun Meşru Menfaati (m.5/2-f): Hizmetin kötüye kullanımının önlenmesi, siber güvenliğin (DDoS saldırıları, bot girişleri vb.) sağlanması amacıyla IP adreslerinin ve giriş kayıtlarının işlenmesi ve caydırıcılık sağlanması.\n• Hukuki Yükümlülüğün Yerine Getirilmesi (m.5/2-ç): Yetkili adli ve idari makamların yasal talebi halinde, elde bulunan giriş erişim kayıtlarının usulüne uygun şekilde paylaşılması.';

  @override
  String get kvkkH4 =>
      '4. İŞLENEN KİŞİSEL VERİLERİN AKTARILMASI VE YURT DIŞI AKTARIM BEYANI';

  @override
  String get kvkkP4 =>
      'SecureVault, teknik operasyonlarını ve şifreli veri barındırma hizmetini Cloudflare R2 bulut altyapısı üzerinde yürütmektedir. Şifreli veri bloklarınız ile yukarıda belirtilen sınırlı hesap verileriniz (SHA-256 hash\'leri), veri merkezi altyapısının yurt dışında yer alması sebebiyle yurt dışına aktarılmaktadır. Ayrıca abonelik süreçlerinin yürütülmesi amacıyla abonelik doğrulama jetonları Google Play Store (Google LLC, ABD) sistemleri ile karşılıklı olarak paylaşılmaktadır. Bu aktarımlar, KVKK Madde 9 kapsamında Kullanıcının uygulama içi açık rızası ve ilgili hizmet sağlayıcılarla akdedilen standart sözleşme hükümleri (SCC) mekanizmalarına dayanarak güvenli bir şekilde gerçekleştirilmektedir. Veriler, yerel üçüncü şahıslara veya reklam şirketlerine asla aktarılmaz. Yetkili adli/idari makamların usulüne uygun yasal talebi halinde, yukarıda tanımlanan giriş erişim kayıtları (madde 2) ilgili makamlarla paylaşılabilir.';

  @override
  String get kvkkH5 => '5. VERİ SAHİBİNİN HAKLARI VE BAŞVURU';

  @override
  String get kvkkP5 =>
      'KVKK\'nın 11. maddesi uyarınca; kişisel verilerinizin işlenip işlenmediğini öğrenme, işlenmişse bilgi talep etme, silinmesini veya düzeltilmesini isteme haklarına sahipsiniz. Güvenlik mimarimiz gereği, düz metin verileriniz (kullanıcı adı vb.) hash\'lendiğinden, kimlik doğrulaması yapılabilmesi adına başvurularınızı uygulama içerisindeki \"Hesabımı Sil\" butonuyla doğrudan yapabilir veya yasal haklarınız için destek@sifreliveritransferi.com adresinden bize ulaşabilirsiniz.';

  @override
  String get kvkkH6 => '6. İLETİŞİM';

  @override
  String get kvkkP6 => 'Sorularınız için: no-reply@sifreliveritransferi.com';

  @override
  String get termsTitle => 'Sorumluluk Reddi';

  @override
  String get termsHeader => 'SORUMLULUK REDDİ (DISCLAIMER) BEYANI';

  @override
  String get termsIntro =>
      'SecureVault hizmetini kullanan her kullanıcı, sistemin doğası ve mimari yapısı gereği aşağıdaki hususları peşinen kabul etmiş ve Şirketi bu konularda en geniş anlamda ibra etmiş sayılır:';

  @override
  String get terms1Title => 'Uçtan Uca Şifreleme — İçeriğe Erişemeyiz';

  @override
  String get terms1Body =>
      'Dosyalarınız ve metinleriniz, sunucuya yüklenmeden ÖNCE kendi cihazınızda AES-256-GCM ile şifrelenir. Şifre çözme anahtarı hiçbir zaman sunucularımıza gönderilmez. Bu nedenle biz, hizmet sağlayıcı olarak, gönderdiğiniz dosyaların içeriğini görüntüleyemez, okuyamaz veya kurtaramayız (zero-knowledge mimarisi).';

  @override
  String get terms2Title => 'Geçici Aktarım Aracı — Kalıcı Depolama Değildir';

  @override
  String get terms2Body =>
      'SecureVault bir dosya SAKLAMA / yedekleme hizmeti DEĞİLDİR. Yüklenen dosyalar yalnızca kısa bir süre (varsayılan 1 saat) veya ilk indirme gerçekleştiğinde, hangisi önce olursa, otomatik ve kalıcı olarak silinir. Dosyalarınızın asıl kopyasını her zaman kendi cihazınızda saklayın.';

  @override
  String get terms3Title => 'Veri Kaybından Sorumluluk Kabul Edilmez';

  @override
  String get terms3Body =>
      'Hizmetin doğası gereği dosyalar otomatik silindiği için, bir dosyanın süresi dolması, indirilememesi veya herhangi bir teknik nedenle kaybolmasından doğabilecek zararlardan SecureVault sorumlu tutulamaz. Önemli verilerinizin yedeğini almak tamamen sizin sorumluluğunuzdadır.';

  @override
  String get terms4Title => 'Üçüncü Taraf Altyapı';

  @override
  String get terms4Body =>
      'Şifreli veriler, Cloudflare R2 bulut altyapısında geçici olarak barındırılır. Veriler şifreli olduğu için bu sağlayıcı da içeriği göremez. Altyapı sağlayıcısının hizmet kesintileri veya politika değişiklikleri kontrolümüz dışındadır.';

  @override
  String get terms5Title => 'Yasal Kullanım — Sorumluluk Kullanıcıdadır';

  @override
  String get terms5Body =>
      'SecureVault yalnızca yasal amaçlarla kullanılabilir. Gönderdiğiniz içeriğin yasalara uygunluğundan tamamen siz sorumlusunuz. İçerik şifreli olduğu için denetlenemez; bu nedenle hizmetin kötüye kullanımından doğan her türlü hukuki ve cezai sorumluluk gönderen kullanıcıya aittir.';

  @override
  String get terms6Title => 'Hizmet \"Olduğu Gibi\" Sunulur';

  @override
  String get terms6Body =>
      'SecureVault, herhangi bir garanti verilmeksizin \"olduğu gibi\" sunulur. Hizmette kesinti, gecikme veya hata olabilir. Hizmetin kesintisiz veya hatasız çalışacağı garanti edilmez.';

  @override
  String get termsFooter =>
      'Bu metin genel bir bilgilendirme niteliğindedir ve hukuki tavsiye yerine geçmez.';

  @override
  String get svcFolderNotFound => 'Klasör bulunamadı.';

  @override
  String get svcFolderEmpty => 'Klasör boş görünüyor.';

  @override
  String get svcFileEmpty => 'Dosya boş görünüyor, başka bir dosya seçin.';

  @override
  String get svcPackaging => 'Klasör paketleniyor (sıkıştırmasız zip)...';

  @override
  String get svcPackDone => '✅ Paketleme tamamlandı.';

  @override
  String get svcGenKey => 'AES-256 anahtarı cihazınızda üretiliyor...';

  @override
  String get svcInitUpload => 'Yükleme oturumu başlatılıyor...';

  @override
  String get svcEncrypting =>
      'Şifreleniyor ve yükleniyor (AES-256-GCM, 5 MB parçalar)...';

  @override
  String get svcUploadDone => '✅ Şifreli yükleme tamamlandı.';

  @override
  String get svcSendingEmail => 'İndirme linki e-posta ile gönderiliyor...';

  @override
  String svcEmailSent(String email) {
    return '✅ E-posta gönderildi → $email';
  }

  @override
  String get svcEmailFailed =>
      '⚠ E-posta gönderilemedi — linki manuel paylaşabilirsiniz.';

  @override
  String get svcInitFailed => 'Yükleme başlatılamadı.';

  @override
  String get svcChunkFailed => 'Parça yüklenemedi.';

  @override
  String get svcFinalizeFailed => 'Yükleme tamamlanamadı.';

  @override
  String get svcTimeout =>
      'Sunucuya bağlanılamadı (zaman aşımı). İnternet bağlantınızı kontrol edin.';

  @override
  String get svcConnError =>
      'Bağlantı kurulamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String svcUnexpected(String error) {
    return 'Beklenmeyen bir hata oluştu: $error';
  }

  @override
  String get dlsvcInvalidKey => 'Geçersiz şifreleme anahtarı.';

  @override
  String get dlsvcDecryptFailed =>
      'Şifre çözme başarısız: anahtar hatalı veya dosya bozuk olabilir.';

  @override
  String get dlsvcLinkExpired =>
      'Bu link artık geçerli değil — ya kullanıldı, ya da süresi doldu.';

  @override
  String dlsvcDownloadFailed(String code) {
    return 'İndirme başarısız (HTTP $code).';
  }

  @override
  String get dlsvcTimeout => 'Sunucuya bağlanılamadı (zaman aşımı).';

  @override
  String get dlsvcConnError =>
      'Bağlantı kurulamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String dlsvcUnexpected(String error) {
    return 'Beklenmeyen bir hata oluştu: $error';
  }

  @override
  String get dlsvcDefaultFile => 'dosya';

  @override
  String get authRegisterFailed => 'Kayıt başarısız.';

  @override
  String get authLoginFailed => 'Giriş başarısız.';

  @override
  String get authRecoverFailed => 'Kurtarma başarısız.';

  @override
  String get authDeleteFailed => 'Hesap silme başarısız.';

  @override
  String get authUnexpectedRetry =>
      'Beklenmeyen bir hata oluştu. Lütfen tekrar deneyin.';

  @override
  String get cphTitle => 'Şifreli Mesaj';

  @override
  String get cphModeEncrypt => 'Mesaj Şifrele';

  @override
  String get cphModeDecrypt => 'Mesaj Çöz';

  @override
  String get cphIntro =>
      'Mesajınız tamamen bu cihazda şifrelenir. Sunucuya hiçbir şey gönderilmez. Şifreli metni kopyalayıp istediğiniz uygulamadan (WhatsApp, SMS...) iletin; alıcı aynı parolayla çözer.';

  @override
  String get cphPlainLabel => 'Şifrelenecek mesaj';

  @override
  String get cphPlainHint => 'Gizli mesajınızı buraya yazın...';

  @override
  String get cphPassword => 'Parola';

  @override
  String get cphPasswordHint => 'Alıcıyla paylaştığınız parola';

  @override
  String get cphEncryptBtn => 'Şifrele';

  @override
  String get cphDecryptBtn => 'Çöz';

  @override
  String get cphEncryptedLabel => 'Şifreli mesaj (kopyalayıp iletin)';

  @override
  String get cphPasteLabel => 'Şifreli mesajı buraya yapıştırın';

  @override
  String get cphPasteHint => 'Size gelen şifreli bloğu yapıştırın...';

  @override
  String get cphResultLabel => 'Çözülen mesaj';

  @override
  String get cphCopy => 'Kopyala';

  @override
  String get cphPaste => 'Yapıştır';

  @override
  String get cphCopied => 'Panoya kopyalandı.';

  @override
  String get cphErrEmptyText => 'Şifrelenecek bir mesaj girin.';

  @override
  String get cphErrEmptyPwd => 'Bir parola girin.';

  @override
  String get cphErrEmptyEncrypted => 'Çözülecek şifreli mesajı yapıştırın.';

  @override
  String get cphErrDecrypt =>
      'Çözme başarısız. Parola yanlış veya mesaj bozuk olabilir.';

  @override
  String get cphPwdWarning =>
      'Parolayı alıcıya güvenli bir kanaldan (yüz yüze, telefon) iletin. Parola olmadan mesaj çözülemez.';

  @override
  String get infoFeatures => 'UYGULAMA ÖZELLİKLERİ';

  @override
  String get infoFeatCipherTitle => 'Çevrimdışı Şifreli Mesaj';

  @override
  String get infoFeatCipherDesc =>
      'Mesajınızı parolayla şifreleyip kopyalayın; WhatsApp, SMS veya istediğiniz uygulamadan iletin. Şifreleme tamamen cihazınızda yapılır — mesaj sunucuya HİÇ gönderilmez. Alıcı, sizinle paylaştığınız parolayla mesajı uygulamada çözer. Bu özellik yalnızca mobil uygulamada vardır.';

  @override
  String get infoFeatFileTitle => 'Şifreli Dosya ve Klasör Paylaşımı';

  @override
  String get infoFeatFileDesc =>
      'Dosya ve klasörlerinizi uçtan uca şifreleyerek tek kullanımlık linkle paylaşın. Link bir kez kullanılır ve kısa sürede otomatik silinir.';

  @override
  String get infoFeatTextTitle => 'Şifreli Metin Paylaşımı';

  @override
  String get infoFeatTextDesc =>
      'Uzun metinleri şifreleyip link olarak paylaşın; alıcı linke tıklayarak güvenle okur.';

  @override
  String get infoFeatLangTitle => '4 Dil Desteği';

  @override
  String get infoFeatLangDesc => 'Türkçe, İngilizce, Almanca ve Rusça arayüz.';

  @override
  String get recoverTitle => 'Şifremi Unuttum';

  @override
  String get recoverLink => 'Şifremi unuttum';

  @override
  String get recoverIntro =>
      'Hesabınızı kurtarmak için kullanıcı adınızı, kayıt sırasında size verilen kurtarma kodunu ve yeni şifrenizi girin.';

  @override
  String get recoverUsername => 'Kullanıcı adı';

  @override
  String get recoverToken => 'Kurtarma kodu';

  @override
  String get recoverTokenHint => 'Kayıtta size verilen kod';

  @override
  String get recoverNewPassword => 'Yeni şifre';

  @override
  String get recoverNewPasswordHint => 'En az 8 karakter';

  @override
  String get recoverButton => 'Şifreyi Sıfırla';

  @override
  String get recoverSuccess =>
      'Şifreniz başarıyla sıfırlandı. Yeni şifrenizle giriş yapabilirsiniz.';

  @override
  String get recoverErrEmpty => 'Lütfen tüm alanları doldurun.';

  @override
  String get recoverErrShortPwd => 'Yeni şifre en az 8 karakter olmalıdır.';

  @override
  String get recoverBackToLogin => 'Girişe dön';

  @override
  String get termsH1 => '1. TEKNİK SAKLAMA VE SİLİNME KOŞULLARI';

  @override
  String get termsP1 =>
      'SecureVault bir bulut depolama, kalıcı arşiv veya veri yedekleme (backup) hizmeti DEĞİLDİR. Hizmete yüklenen tüm şifreli içerikler, alıcı tarafından indirildiği anda veya indirilmediği takdirde belirlenen süre (varsayılan 1 saat) dolduğunda sistemden otomatik, kalıcı ve geri döndürülemez şekilde silinir. Dosyaların asıl kopyalarının güvenli bir şekilde saklanması ve yedeklenmesi tamamen Kullanıcının kendi sorumluluğundadır. Süresi dolduğu için veya teknik nedenlerle silinen verilerin kurtarılmamasından doğan zararlardan Şirket sorumlu tutulamaz.';

  @override
  String get termsH2 => '2. \"SIFIR BİLGİ\" (ZERO-KNOWLEDGE) VE ŞİFRE KAYBI';

  @override
  String get termsP2 =>
      'Hizmetin kriptografik yapısı uyarınca şifreleme anahtarları yalnızca Kullanıcı cihazında üretilir ve sunucuya iletilmez. Kullanıcının şifresini veya indirme linkine ait anahtarı kaybetmesi, unutması veya üçüncü kişilere kaptırması durumunda; Şirketin bu şifreyi yenileme, değiştirme veya şifreli dosyayı açıp Kullanıcıya teslim etme yeteneği teknik olarak bulunmamaktadır. Şifre ve anahtar yönetimindeki ihmallerden kaynaklanan veri kayıplarından münhasıran Kullanıcı sorumludur.';

  @override
  String get termsH3 => '3. HİZMETİN \"OLDUĞU GİBİ\" (AS IS) SUNULMASI';

  @override
  String get termsP3 =>
      'SecureVault, Türk Borçlar Kanunu Madde 115 ve ilgili mevzuatın izin verdiği en geniş sınırlar dahilinde, Hizmeti \"olduğu gibi\" ve \"mümkün olduğu ölçüde\" esasıyla sunmaktadır. Şirket; Hizmetin kesintisiz, hatasız, siber saldırılardan tamamen ari veya belirli bir amaca uygun olacağına dair sarih veya zımni hiçbir garanti vermemektedir. Google Play Store altyapısından, Cloudflare kesintilerinden, küresel internet omurgasındaki arızalardan veya mücbir sebeplerden kaynaklanan gecikme, veri iletilememe veya erişim sorunlarından Şirketin hukuki veya cezai sorumluluğu bulunmamaktadır.';

  @override
  String get termsH4 =>
      '4. TÜRK BORÇLAR KANUNU (TBK M. 115) UYARINCA SINIRLAMA';

  @override
  String get termsP4 =>
      'İşbu sorumluluk reddi metninde yer alan hiçbir hüküm, Şirketin kanundan doğan \"ağır kusur\" veya \"hile\" hallerindeki yasal sorumluluğunu ortadan kaldırmaz veya sınırlandırmaz. Şirketin hafif kusurundan kaynaklanabilecek zararlarda sorumluluğu, Kullanıcının Google Play Store üzerinden Şirkete son 12 ay içinde ödediği toplam abonelik ücreti ile sınırlıdır.';
}
