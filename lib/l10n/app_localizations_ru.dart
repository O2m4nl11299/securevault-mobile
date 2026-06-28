// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'SecureVault';

  @override
  String get appSlogan => 'Сквозное шифрование при обмене файлами';

  @override
  String get loginUsername => 'Имя пользователя';

  @override
  String get loginPassword => 'Пароль';

  @override
  String get loginMin3 => 'Минимум 3 символа';

  @override
  String get loginMin8 => 'Минимум 8 символов';

  @override
  String get loginRemember => 'Запомнить меня';

  @override
  String get loginRememberSub =>
      'Оставаться в системе после закрытия и повторного открытия';

  @override
  String get loginButton => 'Войти';

  @override
  String get loginNoAccount => 'Нет аккаунта? Зарегистрироваться';

  @override
  String get homeTooltipPremium => 'Премиум';

  @override
  String get homeTooltipInfo => 'Информация и безопасность';

  @override
  String get homeTooltipLogout => 'Выйти';

  @override
  String get homeSiteError => 'Не удалось открыть сайт.';

  @override
  String homeLoggedInAs(String username) {
    return 'Вход выполнен: $username';
  }

  @override
  String homePlan(String plan) {
    return 'Тариф: $plan';
  }

  @override
  String get homeSendFile => 'Отправить файл';

  @override
  String get homeSendFolder => 'Отправить папку';

  @override
  String get homeEncryptText => 'Зашифровать текст';

  @override
  String get homeDownloadFile => 'Скачать файл';

  @override
  String get homeDeleteAccount => 'Удалить мой аккаунт';

  @override
  String get regErrKvkk =>
      'Чтобы продолжить, необходимо принять Уведомление о конфиденциальности и Пользовательское соглашение.';

  @override
  String get regErrTerms =>
      'Чтобы продолжить, необходимо принять Условия использования и Отказ от ответственности.';

  @override
  String get regAccountCreated => 'Аккаунт создан';

  @override
  String get regRecoveryInfo =>
      'Ваш код восстановления - сохраните его в надёжном месте. Если вы забудете пароль, только этот код позволит восстановить доступ к аккаунту, и он больше не будет показан.';

  @override
  String get regSavedReturnLogin => 'Сохранил, вернуться ко входу';

  @override
  String get regTitle => 'Регистрация';

  @override
  String get regUsernameLabel => 'Имя пользователя (3-32 символа)';

  @override
  String get regUsernameError => 'Должно быть 3-32 символа';

  @override
  String get regPasswordLabel => 'Пароль (минимум 8 символов)';

  @override
  String get regPasswordError => 'Минимум 8 символов';

  @override
  String get regIReadAccept => 'Я прочитал и принимаю: ';

  @override
  String get regKvkkText => 'Уведомление о конфиденциальности';

  @override
  String get regAnd => ' и ';

  @override
  String get regAgreementText => 'Пользовательское соглашение';

  @override
  String get regTermsText => 'Условия использования и Отказ от ответственности';

  @override
  String get regButton => 'Зарегистрироваться';

  @override
  String get upErrPickFile => 'Сначала выберите файл.';

  @override
  String get upErrEmail => 'Введите действительный адрес электронной почты.';

  @override
  String get upShareSubject => 'Зашифрованный файл - SecureVault';

  @override
  String get upTitle => 'Отправить файл';

  @override
  String get upPickFile => 'Выбрать файл';

  @override
  String get upRecipientEmail => 'Адрес электронной почты получателя';

  @override
  String get upRecipientHelper =>
      'Только для записи - файл не отправляется на этот адрес автоматически;\nвы поделитесь ссылкой на следующем экране через выбранное приложение.';

  @override
  String get upExtraPwd => 'Дополнительная защита паролем (необязательно)';

  @override
  String get upExtraPwdHelper =>
      'Если задано, вы должны сообщить этот пароль получателю отдельно.\nФайл нельзя скачать без него.';

  @override
  String get upEncryptUpload => 'Зашифровать и загрузить';

  @override
  String upMinutes(int count) {
    return '$count мин.';
  }

  @override
  String upHours(int count) {
    return '$count ч.';
  }

  @override
  String get upSuccess => 'Файл зашифрован и загружен.';

  @override
  String upEmailSent(String email) {
    return '📧 Ссылка для скачивания отправлена на $email.';
  }

  @override
  String get upEmailFailed =>
      '⚠ Не удалось отправить письмо. Вы можете поделиться ссылкой ниже.';

  @override
  String upLinkExpiry(String ttl) {
    return 'Эта ссылка станет недействительной через $ttl и может быть использована только ОДИН раз.';
  }

  @override
  String get upExtraPwdWarning =>
      'Вы установили дополнительный пароль. Не забудьте сообщить его получателю отдельно (по другому каналу, не через ссылку).';

  @override
  String get upShareLink => 'Поделиться ссылкой';

  @override
  String get upSendAnother => 'Отправить другой файл';
}
