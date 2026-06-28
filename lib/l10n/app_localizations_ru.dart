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

  @override
  String get premSuccess =>
      '🎉 Премиум активирован! Войдите снова, чтобы увидеть новые лимиты.';

  @override
  String get premTitle => 'Премиум';

  @override
  String get premHeader => 'SecureVault Премиум';

  @override
  String get premMonthlySub => 'Ежемесячно продлеваемая подписка';

  @override
  String get premBenefit1 => 'Лимит размера файла 2 ГБ';

  @override
  String get premBenefit2 => '20 передач в день';

  @override
  String get premBenefit3 => 'Сквозное шифрование, неограниченная безопасность';

  @override
  String get premBenefit4 => 'Приоритетная поддержка';

  @override
  String get premLoadingStore => 'Загрузка информации о магазине...';

  @override
  String get premStoreUnavailable =>
      'Магазин сейчас недоступен. Пожалуйста, попробуйте позже.';

  @override
  String get premProductUnavailable =>
      'Премиум-продукт ещё не готов. Пожалуйста, попробуйте позже.';

  @override
  String premBuyButton(String price) {
    return '$price / мес - Премиум';
  }

  @override
  String get premRestore => 'Восстановить покупки';

  @override
  String get premAutoRenewInfo =>
      'Подписка автоматически продлевается в конце каждого периода. Вы можете отменить её в любое время в своём аккаунте Google Play.';

  @override
  String get infoTitle => 'Информация и безопасность';

  @override
  String get infoSecFlow => 'ПРОЦЕСС БЕЗОПАСНОСТИ';

  @override
  String get infoFlow1 =>
      'Файл шифруется на вашем устройстве по частям с помощью AES-256-GCM.';

  @override
  String get infoFlow2 =>
      'Зашифрованные данные загружаются на сервер через TLS — ключ не передаётся.';

  @override
  String get infoFlow3 =>
      'Сервер создаёт токен; ссылка для скачивания формируется на вашем устройстве.';

  @override
  String get infoFlow4 =>
      'Получатель нажимает на ссылку — ключ (#KEY) никогда не попадает на сервер.';

  @override
  String get infoFlow5 =>
      'Зашифрованный файл скачивается потоком и сразу расшифровывается — мало RAM.';

  @override
  String get infoFlow6 => 'Токен удаляется атомарно; файл одноразовый.';

  @override
  String get infoCrypto => 'КРИПТОГРАФИЯ';

  @override
  String get infoKeyAlgo => 'Алгоритм';

  @override
  String get infoKeyQuantum => 'Квантовая устойчивость';

  @override
  String get infoValYes => 'Есть';

  @override
  String get infoKeyKey => 'Ключ';

  @override
  String get infoKeyNonce => 'Nonce / IV';

  @override
  String get infoValNonce => '96-бит CSPRNG (на каждую часть)';

  @override
  String get infoKeyAuthTag => 'Auth Tag';

  @override
  String get infoValAuthTag => '128-бит (на каждую часть)';

  @override
  String get infoKeyTransport => 'Транспорт';

  @override
  String get infoKeyFileLimit => 'Ваш лимит файла';

  @override
  String get infoKeyTokenLife => 'Срок жизни токена';

  @override
  String get infoValTokenLife => '1 час';

  @override
  String get infoKeyUsage => 'Использование';

  @override
  String get infoValOnce => 'Одноразово';

  @override
  String get infoKeyServerKey => 'Доступ сервера к ключу';

  @override
  String get infoValNever => 'Никогда';

  @override
  String get infoWhy => 'ПОЧЕМУ SECUREVAULT?';

  @override
  String get infoWhy1Title => 'Нулевое разглашение';

  @override
  String get infoWhy1Desc =>
      'Файл шифруется на вашем устройстве. Сервер никогда не видит содержимое.';

  @override
  String get infoWhy2Title => 'Одноразовое использование';

  @override
  String get infoWhy2Desc => 'Токен атомарно удаляется после скачивания.';

  @override
  String get infoWhy3Title => 'Дополнительный пароль';

  @override
  String get infoWhy3Desc =>
      'Второй уровень безопасности — передайте его получателю по отдельному каналу.';

  @override
  String get infoWhy4Title => 'Cloudflare R2';

  @override
  String get infoWhy4Desc =>
      'Глобальная инфраструктура CDN, нулевая плата за исходящий трафик.';

  @override
  String get infoWhy5Title => 'Квантовоустойчивый';

  @override
  String get infoWhy5Desc =>
      'Симметричное шифрование AES-256-GCM считается безопасным даже против квантовых компьютеров. Ключи создаются на вашем устройстве; асимметричный обмен ключами по сети не выполняется.';

  @override
  String get infoVirus => 'О ПРОВЕРКЕ НА ВИРУСЫ';

  @override
  String get infoVirus1Title => 'Почему нет проверки?';

  @override
  String get infoVirus1Desc =>
      'Из-за архитектуры с нулевым разглашением сервер не видит содержимое зашифрованного файла и поэтому не может проверять его на вирусы.';

  @override
  String get infoVirus2Title => 'Наша рекомендация';

  @override
  String get infoVirus2Desc =>
      'Мы рекомендуем проверять скачанные файлы собственным антивирусным ПО.';

  @override
  String get infoWhoFor => 'ДЛЯ КОГО?';

  @override
  String get infoWho1Title => 'Юристы и нотариусы';

  @override
  String get infoWho1Desc => 'Безопасно отправляйте документы клиентов.';

  @override
  String get infoWho2Title => 'Бухгалтеры';

  @override
  String get infoWho2Desc => 'Безопасно делитесь финансовыми документами.';

  @override
  String get infoWho3Title => 'Отдел кадров';

  @override
  String get infoWho3Desc => 'Расчётные листы и договоры.';

  @override
  String get infoWho4Title => 'Медицинские работники';

  @override
  String get infoWho4Desc => 'Отчёты о пациентах и результаты анализов.';

  @override
  String get infoWho5Title => 'Стартапы';

  @override
  String get infoWho5Desc => 'Конфиденциальные документы для инвесторов.';

  @override
  String get infoWho6Title => 'Частные лица';

  @override
  String get infoWho6Desc =>
      'Копии удостоверений, паспорт, банковские документы.';

  @override
  String get infoDisclaimer => 'ОТКАЗ ОТ ОТВЕТСТВЕННОСТИ';

  @override
  String get infoDisclaimerText =>
      'SecureVault — это инструмент временной передачи, а не постоянное хранилище. Файлы автоматически удаляются через короткое время; мы не можем получить доступ к содержимому и не несём ответственности за потерю данных. Храните собственные резервные копии важных файлов.';

  @override
  String get infoReadTerms => 'Читать условия использования';
}
