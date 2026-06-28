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
}
