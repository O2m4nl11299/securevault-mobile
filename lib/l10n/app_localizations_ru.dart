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

  @override
  String get txtErrEmpty => 'Введите текст для шифрования.';

  @override
  String get txtShareSubject => 'Зашифрованный текст - SecureVault';

  @override
  String get txtTitle => 'Зашифровать текст';

  @override
  String get txtLabel => 'Текст для шифрования';

  @override
  String get txtHint =>
      'Введите или вставьте сюда текст, который хотите зашифровать...';

  @override
  String txtCharCount(int count) {
    return '$count симв.';
  }

  @override
  String get txtRecipientHelper =>
      'Только для записи - вы поделитесь ссылкой на следующем экране.';

  @override
  String get txtExtraPwdHelper =>
      'Если задано, вы должны сообщить этот пароль получателю отдельно.';

  @override
  String get txtSuccess => 'Текст зашифрован и загружен.';

  @override
  String get txtExtraPwdWarning =>
      'Вы установили дополнительный пароль. Не забудьте сообщить его получателю отдельно.';

  @override
  String get txtEncryptAnother => 'Зашифровать другой текст';

  @override
  String get fldErrPick => 'Сначала выберите папку.';

  @override
  String get fldShareSubject => 'Зашифрованная папка - SecureVault';

  @override
  String get fldTitle => 'Отправить папку';

  @override
  String get fldDefaultName => 'папка';

  @override
  String get fldPick => 'Выбрать папку';

  @override
  String get fldDescription =>
      'Выбранная папка вместе со всеми файлами внутри упаковывается в один .zip-файл и шифруется. Получатель открывает скачанный zip-файл на своём устройстве.';

  @override
  String get fldRecipientHelper =>
      'Ссылка для скачивания автоматически отправляется на этот адрес.';

  @override
  String get fldPackaging => 'Папка упаковывается и шифруется...';

  @override
  String get fldPackButton => 'Упаковать, зашифровать и отправить';

  @override
  String get fldSuccess => 'Папка упакована, зашифрована и загружена.';

  @override
  String get fldSendAnother => 'Отправить другую папку';

  @override
  String get dlErrInvalid =>
      'Недействительная или нераспознанная ссылка SecureVault.';

  @override
  String get dlErrPwdProtected =>
      'Эта ссылка защищена дополнительным паролем — эта функция пока не поддерживается в мобильном приложении. Откройте ссылку в браузере.';

  @override
  String dlSaved(String path) {
    return 'Сохранено: $path';
  }

  @override
  String dlSaveFailed(String error) {
    return 'Не удалось сохранить: $error';
  }

  @override
  String get dlTitle => 'Скачать файл';

  @override
  String get dlLinkLabel => 'Ссылка SecureVault';

  @override
  String get dlPasteTooltip => 'Вставить из буфера обмена';

  @override
  String dlDownloading(String percent) {
    return 'Скачивание и расшифровка... $percent%';
  }

  @override
  String get dlButton => 'Скачать и расшифровать';

  @override
  String get dlNote =>
      'Примечание: ссылка одноразовая — после скачивания она больше не работает.';

  @override
  String dlSuccess(String fileName) {
    return '$fileName\nрасшифрован и сохранён.';
  }

  @override
  String get dlSaveToDevice => 'Сохранить на устройство';

  @override
  String get dlShare => 'Поделиться';

  @override
  String get dlLargeFileNote =>
      'Поскольку файл большой, используйте меню «Поделиться» вместо прямого сохранения (например, в файловый менеджер или на Диск).';

  @override
  String get dlDownloadAnother => 'Скачать другую ссылку';

  @override
  String get delErrConfirm => 'Сначала установите флажок подтверждения.';

  @override
  String get delErrPwd => 'Введите пароль.';

  @override
  String get delDeleted => 'Ваш аккаунт был безвозвратно удалён.';

  @override
  String get delTitle => 'Удалить аккаунт';

  @override
  String get delIrreversible => 'Это действие необратимо.';

  @override
  String get delExplanation =>
      'Ваш аккаунт и вся ваша информация (имя пользователя, хеш пароля, код восстановления) будут безвозвратно удалены. После этого вы не сможете снова войти с тем же именем пользователя.';

  @override
  String get delPwdLabel => 'Ваш пароль (для подтверждения)';

  @override
  String get delConfirmCheck => 'Я понимаю, что это необратимо.';

  @override
  String get delButton => 'Безвозвратно удалить мой аккаунт';

  @override
  String get sozTitle => 'Пользовательское соглашение';

  @override
  String get sozLastUpdate => 'Последнее обновление: июнь 2026';

  @override
  String get sozH1 => '1. ПРИНЯТИЕ';

  @override
  String get sozP1 =>
      'Используя сервис SecureVault, вы считаетесь принявшим настоящее соглашение.';

  @override
  String get sozH2 => '2. ОПИСАНИЕ СЕРВИСА';

  @override
  String get sozP2 =>
      'SecureVault — это сервис обмена файлами с архитектурой нулевого разглашения, использующий шифрование AES-256-GCM на стороне клиента. Файлы хранятся на сервере в зашифрованном виде, а ключ шифрования никогда не передаётся на сервер.';

  @override
  String get sozH3 => '3. УСЛОВИЯ ИСПОЛЬЗОВАНИЯ';

  @override
  String get sozP3 =>
      'Категорически запрещается передавать следующий контент:\n• Незаконный контент\n• Нарушение авторских прав\n• Вредоносное ПО\n• Несанкционированная передача персональных данных';

  @override
  String get sozH4 => '4. ОГРАНИЧЕНИЯ СЕРВИСА';

  @override
  String get sozP4 =>
      '• Бесплатные участники: лимит файла 250 МБ, 4 отправки в день\n• Премиум-участники: лимит файла 2 ГБ, 20 отправок в день\n• Все файлы одноразовые (автоматически удаляются после скачивания)';

  @override
  String get sozH5 => '5. ОТКАЗ ОТ ОТВЕТСТВЕННОСТИ';

  @override
  String get sozP5 =>
      'SecureVault не несёт ответственности за содержимое передаваемых файлов. В силу архитектуры нулевого разглашения доступ к содержимому файлов невозможен. Для более подробной информации ознакомьтесь с экраном «Условия использования и Отказ от ответственности».';

  @override
  String get sozH6 => '6. ИЗМЕНЕНИЯ СЕРВИСА';

  @override
  String get sozP6 =>
      'SecureVault оставляет за собой право изменять условия обслуживания без предварительного уведомления.';

  @override
  String get sozH7 => '7. УДАЛЕНИЕ АККАУНТА';

  @override
  String get sozP7 =>
      'Вы можете удалить свой аккаунт в любое время. Удаление безвозвратно стирает все ваши данные.';

  @override
  String get sozH8 => '8. КОНТАКТЫ';

  @override
  String get sozP8 => 'По вопросам: no-reply@sifreliveritransferi.com';

  @override
  String get kvkkTitle => 'Уведомление о конфиденциальности (KVKK)';

  @override
  String get kvkkH1 => '1. ОПЕРАТОР ДАННЫХ';

  @override
  String get kvkkP1 =>
      'В качестве SecureVault (sifreliveritransferi.com) мы действуем как оператор данных в рамках турецкого Закона № 6698 о защите персональных данных.';

  @override
  String get kvkkH2 => '2. ОБРАБАТЫВАЕМЫЕ ПЕРСОНАЛЬНЫЕ ДАННЫЕ';

  @override
  String get kvkkP2a =>
      'Наша система спроектирована с архитектурой нулевого разглашения. Обрабатываемые данные:';

  @override
  String get kvkkP2b =>
      '• Имя пользователя: хранится как хеш SHA-256. Исходное имя пользователя на сервере не хранится.\n• Пароль: хранится в виде хеша по алгоритму Argon2id. Пароли в открытом виде никогда не хранятся.\n• IP-адрес: хранится как хеш SHA-256 кратковременно (24 часа) в Redis.\n• Адрес электронной почты (получатель): используется только для отправки ссылки, не хранится.\n• Содержимое файла: поступает на сервер в зашифрованном виде. Ключ шифрования никогда не отправляется на сервер.';

  @override
  String get kvkkH3 => '3. ЦЕЛЬ ОБРАБОТКИ ДАННЫХ';

  @override
  String get kvkkP3 =>
      '• Создание и управление учётной записью пользователя\n• Предоставление сервиса безопасного обмена файлами\n• Предотвращение злоупотребления сервисом';

  @override
  String get kvkkH4 => '4. СРОК ХРАНЕНИЯ ДАННЫХ';

  @override
  String get kvkkP4 =>
      '• Учётная запись: автоматически удаляется при отсутствии активного использования в течение 90 дней.\n• Файлы: удаляются сразу после скачивания или в течение 1 часа, если не скачаны.\n• Хеш IP: автоматически удаляется через 24 часа.';

  @override
  String get kvkkH5 => '5. ПРАВА СУБЪЕКТА ДАННЫХ';

  @override
  String get kvkkP5 =>
      'В рамках статьи 11 KVKK;\n• Узнать, обрабатываются ли ваши данные\n• Потребовать удаления ваших данных\n• Вы можете удалить свою учётную запись через опцию «Удалить мой аккаунт».';

  @override
  String get kvkkH6 => '6. КОНТАКТЫ';

  @override
  String get kvkkP6 => 'По вопросам: no-reply@sifreliveritransferi.com';

  @override
  String get termsTitle => 'Условия использования';

  @override
  String get termsHeader => 'Условия использования и Отказ от ответственности';

  @override
  String get termsIntro =>
      'Используя сервис SecureVault, вы принимаете следующие условия.';

  @override
  String get terms1Title =>
      'Сквозное шифрование — Мы не имеем доступа к содержимому';

  @override
  String get terms1Body =>
      'Ваши файлы и тексты шифруются с помощью AES-256-GCM на вашем устройстве ДО загрузки на сервер. Ключ расшифровки никогда не отправляется на наши серверы. Поэтому мы, как поставщик услуг, не можем просматривать, читать или восстанавливать содержимое отправляемых вами файлов (архитектура нулевого разглашения).';

  @override
  String get terms2Title =>
      'Инструмент временной передачи — Не постоянное хранилище';

  @override
  String get terms2Body =>
      'SecureVault НЕ является сервисом хранения / резервного копирования файлов. Загруженные файлы удаляются автоматически и безвозвратно лишь через короткое время (по умолчанию 1 час) или при первом скачивании — в зависимости от того, что наступит раньше. Всегда храните оригинал ваших файлов на собственном устройстве.';

  @override
  String get terms3Title => 'Ответственность за потерю данных не принимается';

  @override
  String get terms3Body =>
      'Поскольку по своей природе файлы удаляются автоматически, SecureVault не может нести ответственность за ущерб, возникший из-за истечения срока действия файла, невозможности его скачивания или потери по любой технической причине. Резервное копирование важных данных полностью является вашей ответственностью.';

  @override
  String get terms4Title => 'Сторонняя инфраструктура';

  @override
  String get terms4Body =>
      'Зашифрованные данные временно размещаются в облачной инфраструктуре Cloudflare R2. Поскольку данные зашифрованы, этот поставщик также не видит содержимое. Перебои в обслуживании или изменения политики поставщика инфраструктуры находятся вне нашего контроля.';

  @override
  String get terms5Title =>
      'Законное использование — Ответственность лежит на пользователе';

  @override
  String get terms5Body =>
      'SecureVault может использоваться только в законных целях. Вы полностью несёте ответственность за законность отправляемого вами содержимого. Поскольку содержимое зашифровано, его нельзя проверить; поэтому вся юридическая и уголовная ответственность за злоупотребление сервисом лежит на отправляющем пользователе.';

  @override
  String get terms6Title => 'Сервис предоставляется «как есть»';

  @override
  String get terms6Body =>
      'SecureVault предоставляется «как есть» без каких-либо гарантий. В работе сервиса могут возникать перебои, задержки или ошибки. Не гарантируется, что сервис будет работать без перебоев или ошибок.';

  @override
  String get termsFooter =>
      'Этот текст носит общий информационный характер и не заменяет юридическую консультацию.';

  @override
  String get svcFolderNotFound => 'Папка не найдена.';

  @override
  String get svcFolderEmpty => 'Папка выглядит пустой.';

  @override
  String get svcFileEmpty => 'Файл выглядит пустым; выберите другой файл.';

  @override
  String get svcPackaging => 'Упаковка папки (несжатый zip)...';

  @override
  String get svcPackDone => '✅ Упаковка завершена.';

  @override
  String get svcGenKey => 'Создание ключа AES-256 на вашем устройстве...';

  @override
  String get svcInitUpload => 'Запуск сессии загрузки...';

  @override
  String get svcEncrypting =>
      'Шифрование и загрузка (AES-256-GCM, части по 5 МБ)...';

  @override
  String get svcUploadDone => '✅ Зашифрованная загрузка завершена.';

  @override
  String get svcSendingEmail =>
      'Отправка ссылки для скачивания по электронной почте...';

  @override
  String svcEmailSent(String email) {
    return '✅ Письмо отправлено → $email';
  }

  @override
  String get svcEmailFailed =>
      '⚠ Не удалось отправить письмо — вы можете поделиться ссылкой вручную.';

  @override
  String get svcInitFailed => 'Не удалось начать загрузку.';

  @override
  String get svcChunkFailed => 'Не удалось загрузить часть.';

  @override
  String get svcFinalizeFailed => 'Не удалось завершить загрузку.';

  @override
  String get svcTimeout =>
      'Не удалось подключиться к серверу (тайм-аут). Проверьте подключение к интернету.';

  @override
  String get svcConnError =>
      'Не удалось установить соединение. Проверьте подключение к интернету.';

  @override
  String svcUnexpected(String error) {
    return 'Произошла непредвиденная ошибка: $error';
  }

  @override
  String get dlsvcInvalidKey => 'Недействительный ключ шифрования.';

  @override
  String get dlsvcDecryptFailed =>
      'Расшифровка не удалась: ключ может быть неверным или файл повреждён.';

  @override
  String get dlsvcLinkExpired =>
      'Эта ссылка больше недействительна — она либо использована, либо истёк её срок.';

  @override
  String dlsvcDownloadFailed(String code) {
    return 'Скачивание не удалось (HTTP $code).';
  }

  @override
  String get dlsvcTimeout => 'Не удалось подключиться к серверу (тайм-аут).';

  @override
  String get dlsvcConnError =>
      'Не удалось установить соединение. Проверьте подключение к интернету.';

  @override
  String dlsvcUnexpected(String error) {
    return 'Произошла непредвиденная ошибка: $error';
  }

  @override
  String get dlsvcDefaultFile => 'файл';

  @override
  String get authRegisterFailed => 'Регистрация не удалась.';

  @override
  String get authLoginFailed => 'Не удалось войти.';

  @override
  String get authRecoverFailed => 'Восстановление не удалось.';

  @override
  String get authDeleteFailed => 'Не удалось удалить аккаунт.';

  @override
  String get authUnexpectedRetry =>
      'Произошла непредвиденная ошибка. Пожалуйста, попробуйте снова.';

  @override
  String get cphTitle => 'Зашифрованное сообщение';

  @override
  String get cphModeEncrypt => 'Зашифровать сообщение';

  @override
  String get cphModeDecrypt => 'Расшифровать сообщение';

  @override
  String get cphIntro =>
      'Ваше сообщение шифруется полностью на этом устройстве. На сервер ничего не отправляется. Скопируйте зашифрованный текст и отправьте его через любое приложение (WhatsApp, SMS...); получатель расшифрует его тем же паролем.';

  @override
  String get cphPlainLabel => 'Сообщение для шифрования';

  @override
  String get cphPlainHint => 'Введите здесь ваше секретное сообщение...';

  @override
  String get cphPassword => 'Пароль';

  @override
  String get cphPasswordHint => 'Пароль, которым вы делитесь с получателем';

  @override
  String get cphEncryptBtn => 'Зашифровать';

  @override
  String get cphDecryptBtn => 'Расшифровать';

  @override
  String get cphEncryptedLabel =>
      'Зашифрованное сообщение (скопируйте и отправьте)';

  @override
  String get cphPasteLabel => 'Вставьте сюда зашифрованное сообщение';

  @override
  String get cphPasteHint => 'Вставьте полученный зашифрованный блок...';

  @override
  String get cphResultLabel => 'Расшифрованное сообщение';

  @override
  String get cphCopy => 'Копировать';

  @override
  String get cphPaste => 'Вставить';

  @override
  String get cphCopied => 'Скопировано в буфер обмена.';

  @override
  String get cphErrEmptyText => 'Введите сообщение для шифрования.';

  @override
  String get cphErrEmptyPwd => 'Введите пароль.';

  @override
  String get cphErrEmptyEncrypted =>
      'Вставьте зашифрованное сообщение для расшифровки.';

  @override
  String get cphErrDecrypt =>
      'Расшифровка не удалась. Возможно, пароль неверен или сообщение повреждено.';

  @override
  String get cphPwdWarning =>
      'Передайте пароль получателю по безопасному каналу (лично, по телефону). Без пароля сообщение расшифровать нельзя.';

  @override
  String get infoFeatures => 'ВОЗМОЖНОСТИ ПРИЛОЖЕНИЯ';

  @override
  String get infoFeatCipherTitle => 'Офлайн зашифрованное сообщение';

  @override
  String get infoFeatCipherDesc =>
      'Зашифруйте сообщение паролем и скопируйте его; отправьте через WhatsApp, SMS или любое приложение. Шифрование выполняется полностью на вашем устройстве — сообщение НИКОГДА не отправляется на сервер. Получатель расшифровывает его в приложении паролем, которым вы поделились. Эта функция доступна только в мобильном приложении.';

  @override
  String get infoFeatFileTitle => 'Зашифрованный обмен файлами и папками';

  @override
  String get infoFeatFileDesc =>
      'Делитесь файлами и папками со сквозным шифрованием по одноразовой ссылке. Ссылка работает один раз и вскоре автоматически удаляется.';

  @override
  String get infoFeatTextTitle => 'Зашифрованный обмен текстом';

  @override
  String get infoFeatTextDesc =>
      'Шифруйте длинные тексты и делитесь ими по ссылке; получатель безопасно читает их, нажав на ссылку.';

  @override
  String get infoFeatLangTitle => 'Поддержка 4 языков';

  @override
  String get infoFeatLangDesc =>
      'Турецкий, английский, немецкий и русский интерфейс.';
}
