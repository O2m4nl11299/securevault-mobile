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
  String get sozH1 => '1. СТОРОНЫ И ПРИНЯТИЕ УСЛОВИЙ';

  @override
  String get sozP1 =>
      'Настоящее Соглашение об условиях использования и предоставлении услуг («Соглашение») заключено между Фатихом Гёктюрком («Компания») и пользователем («Пользователь»), который пользуется услугой сквозного зашифрованного временного обмена данными («Услуга»), предоставляемой через мобильное приложение SecureVault и веб-сайт sifreliveritransferi.com. Начиная использовать Услугу, вы считаетесь заранее принявшим все условия настоящего Соглашения.';

  @override
  String get sozH2 => '2. ОПИСАНИЕ И АРХИТЕКТУРА УСЛУГИ';

  @override
  String get sozP2 =>
      'SecureVault — это инструмент временной передачи данных с клиентской архитектурой нулевого разглашения. В рамках Услуги:\n• Файлы и тексты, загружаемые Пользователем, шифруются алгоритмом AES-256-GCM на устройстве Пользователя ДО отправки на сервер.\n• Ключ расшифровки ни при каких обстоятельствах не передаётся, не хранится и не обрабатывается на серверах Компании.\n• Компания не может просматривать, читать, изменять или восстанавливать содержимое зашифрованных данных, размещённых на её серверах, в случае утраты данных.';

  @override
  String get sozH3 => '3. МОДЕЛЬ ПОДПИСКИ И УСЛОВИЯ ОПЛАТЫ';

  @override
  String get sozP3 =>
      'Услуга предоставляется на двух разных уровнях использования — Бесплатном и Премиум:\n• Бесплатный план: ограничен максимальным размером файла 250 МБ за одну передачу и максимум 4 отправками в день.\n• План Премиум (подписка): обеспечивает максимальный размер файла 2 ГБ за одну передачу и 20 отправок в день.\n\nПлатёжная инфраструктура: оформление подписки Премиум и списание средств полностью осуществляются через инфраструктуру внутриигровых покупок и подписок Google Play Store (Google LLC). Компания не обрабатывает и не хранит данные банковской карты, банковского счёта или иные прямые финансовые данные Пользователя на своих серверах. Стоимость подписки, периоды продления и процессы отмены полностью регулируются политикой Google Play Store. Пользователь вправе отменить подписку в любое время через настройки своей учётной записи Google Play.';

  @override
  String get sozH4 => '4. УСЛОВИЯ ИСПОЛЬЗОВАНИЯ И ЗАПРЕТЫ';

  @override
  String get sozP4 =>
      'Хотя SecureVault в силу своей архитектуры не может проверять зашифрованное содержимое, Пользователь обязуется использовать Услугу только в законных целях. Строго запрещается передача следующего содержимого или использование Услуги в следующих целях:\n• Содержимое, противоречащее действующему законодательству, представляющее собой преступление или способствующее незаконной деятельности\n• Файлы, нарушающие авторские права, патенты, коммерческую тайну или иные права интеллектуальной собственности\n• Вредоносное программное обеспечение, вирусы или код, предназначенный для причинения вреда целевым системам\n• Персональные данные или личное содержимое, полученные без согласия соответствующих лиц\n\nВ ответ на надлежащим образом оформленные запросы законных органов Компания обязана предоставить имеющиеся у неё записи журналов доступа (см. Уведомление о конфиденциальности/KVKK) судебным или административным органам. Поскольку содержимое зашифрованных файлов/текстов в силу архитектуры Услуги никогда не может быть просмотрено Компанией, такое содержимое не может быть предметом данного обязательства по раскрытию информации.';

  @override
  String get sozH5 => '5. ИЗМЕНЕНИЯ СОГЛАШЕНИЯ И УСЛУГИ';

  @override
  String get sozP5 =>
      'Компания может вносить изменения в условия настоящего Соглашения или в лимиты тарифных планов в связи с техническими требованиями Услуги, изменениями в политике Google Play Store или необходимостью соблюдения применимого законодательства. Обновления, содержащие существенные изменения, неблагоприятные для Пользователя, будут доведены до сведения Пользователей разумным образом через приложение или веб-сайт не менее чем за 7 дней до их вступления в силу. Если Пользователь не принимает новые условия, он вправе прекратить использование Услуги и отменить подписку через Google Play.';

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
      '(Данное уведомление о конфиденциальности подготовлено на турецком языке как юридически обязательный текст. Ниже приводится информационный перевод на русский язык.)\n\nВ соответствии с Законом № 6698 о защите персональных данных (\"KVKK\") Фатих Гёктюрк (\"SecureVault\" или \"Компания\") обрабатывает указанные ниже ограниченные персональные данные законно и добросовестно, точно и при необходимости актуально, в определённых, явных и законных целях, а также связанным, ограниченным и соразмерным этим целям образом.\n\nОператор данных: Фатих Гёктюрк (SecureVault)\nКонтактный e-mail: destek@sifreliveritransferi.com';

  @override
  String get kvkkH2 =>
      '2. ОБРАБАТЫВАЕМЫЕ ПЕРСОНАЛЬНЫЕ ДАННЫЕ И ТЕХНИЧЕСКАЯ БЕЗОПАСНОСТЬ';

  @override
  String get kvkkP2a =>
      'Наша система построена по архитектуре zero-knowledge с целью обработки ваших персональных данных на минимально возможном уровне. Обрабатываются следующие данные:';

  @override
  String get kvkkP2b =>
      '• Имя пользователя / данные аккаунта: Хранятся необратимо хешированными по SHA-256. Исходный открытый текст на сервере не хранится. Срок хранения: пока аккаунт активен; автоматически и безвозвратно удаляются при удалении аккаунта или 90 днях неактивности.\n• Пароль аккаунта: Получается по защищённым каналам; хранится только хеш Argon2id. Ваш пароль в открытом виде никогда не хранится в базе. Срок хранения: до удаления аккаунта.\n• IP-адрес (безопасность сессии): Хранится как хеш SHA-256 в базе в памяти (Redis) для проверки одновременных сессий, безопасности аккаунта и предотвращения несанкционированного доступа. Срок хранения: не более 24 часов, затем автоматически и безвозвратно удаляется.\n• Журнал доступа (IP + аккаунт + время): Для предотвращения злоупотреблений, обеспечения кибербезопасности, выявления мошенничества и ответа на законные запросы компетентных судебных/административных органов ваш IP-адрес (открытый текст), хеш аккаунта и время входа хранятся в журналах безопасности. Срок хранения: 90 дней (3 месяца), затем автоматически безвозвратно удаляются.\n• Запись сертификата уничтожения: При скачивании файла или его удалении по истечении срока для доказательства уничтожения криптографически подписываются и хранятся хеш идентификатора файла, размер файла, время загрузки, время удаления и причина удаления. Эта запись не содержит имени или содержимого файла. Срок хранения: 90 дней, затем автоматически безвозвратно удаляется.\n• E-mail получателя: Обрабатывается только по запросу пользователя кратковременно для отправки ссылки на скачивание по e-mail. В базе не сохраняется; удаляется сразу после операции.\n• Данные подписки и оплаты: Поскольку платежи проходят через Google Play, данные вашей карты или финансовые платёжные данные у нас не хранятся. Обрабатываются только сгенерированные Google токены проверки подписки, уровень и статус подписки. Срок хранения: на период подписки и применимых юридических обязательств.\n• Содержимое файла: Согласно архитектуре zero-knowledge загружаемые файлы шифруются на вашем устройстве до передачи. Мы не можем просматривать, расшифровывать, читать содержимое или получать к нему доступ. Срок хранения: удаляется безвозвратно в момент скачивания или не более чем через 1 час, если не скачан.';

  @override
  String get kvkkH3 => '3. СПОСОБ СБОРА, ЦЕЛИ И ПРАВОВЫЕ ОСНОВАНИЯ';

  @override
  String get kvkkP3 =>
      '3.1. Способ сбора\nВаши персональные данные собираются в электронном виде полностью автоматизированными средствами (через API, системные журналы и записи базы данных), когда вы устанавливаете приложение SecureVault, создаёте аккаунт, входите в систему, совершаете покупки в приложении и пользуетесь им.\n\n3.2. Цели и правовые основания\nВаши данные обрабатываются согласно ст. 5(2) KVKK на следующих правовых основаниях:\n• Заключение или исполнение договора (ст. 5/2-c): Создание аккаунта, предоставление услуги безопасной передачи файлов, работа Премиум-подписки, проверка подписки Google Play.\n• Законный интерес оператора (ст. 5/2-f): Обеспечение безопасности сервиса, предотвращение несанкционированного доступа, защита от DDoS, ботов и злоупотреблений, обеспечение кибербезопасности.\n• Исполнение правовой обязанности (ст. 5/2-ç): Ответ на законные запросы информации и документов от компетентных судебных и административных органов.';

  @override
  String get kvkkH4 => '4. ПЕРЕДАЧА ДАННЫХ И ТРАНСГРАНИЧНАЯ ПЕРЕДАЧА';

  @override
  String get kvkkP4 =>
      'SecureVault выполняет технические операции и хранение зашифрованных данных на облачной инфраструктуре Cloudflare R2. Соответственно, зашифрованные файлы и ограниченные технические данные, необходимые для оказания услуги, могут передаваться за рубеж, поскольку центры обработки данных расположены за пределами страны. Для работы Премиум-подписок сведения о проверке подписки передаются в системы Google LLC (Google Play).\n\nТрансграничная передача осуществляется безопасно при надлежащих гарантиях, предусмотренных ст. 9 KVKK (стандартные договорные положения - механизмы SCC, заключённые с соответствующими глобальными поставщиками услуг), либо при необходимости на основании явного согласия пользователя, свободно данного в приложении.\n\nВаши персональные данные никогда не продаются рекламным компаниям, брокерам данных или коммерческим третьим лицам и не передаются в маркетинговых целях. Законные запросы компетентных судебных/административных органов сохраняются.';

  @override
  String get kvkkH5 => '5. БЕЗОПАСНОСТЬ ПЕРСОНАЛЬНЫХ ДАННЫХ';

  @override
  String get kvkkP5 =>
      'Для предотвращения незаконной обработки персональных данных и доступа к ним наша Компания применяет надёжные методы шифрования, контроль доступа, системы журналирования, сетевую безопасность, актуальную программную инфраструктуру и необходимые технические и организационные меры безопасности.';

  @override
  String get kvkkH6 => '6. ПРАВА СУБЪЕКТА ДАННЫХ И ПОРЯДОК ОБРАЩЕНИЯ';

  @override
  String get kvkkP6 =>
      'Согласно ст. 11 KVKK вы имеете право: узнать, обрабатываются ли ваши персональные данные, запросить информацию, если да, узнать цель обработки, узнать третьих лиц, которым они переданы в стране или за рубежом, требовать исправления неполных или неточно обработанных данных, а также требовать их удаления или уничтожения на условиях, предусмотренных KVKK.\n\nВажное техническое примечание и примечание о безопасности: В силу нашей архитектуры zero-knowledge ваши данные в открытом виде (имя пользователя и т. п.) необратимо хешируются и шифруются. Поэтому прямая проверка личности и ручное вмешательство в данные в наших системах могут быть технически невозможны. В связи с этим права на удаление и исправление данных следует реализовывать прежде всего непосредственно через меню приложения \"Удалить аккаунт\" и \"Редактировать профиль\".\n\nПо обращениям вне этих меню в соответствии с Коммюнике о порядке и принципах обращения к оператору данных вы можете связаться с нами по e-mail с адреса, зарегистрированного в наших системах (для проверки личности), по адресу destek@sifreliveritransferi.com.\n\nАнонимные или несанкционированные обращения, не подтверждающие вашу личность и не позволяющие сопоставление с хешированными данными в системе, не могут быть обработаны согласно нашим политикам кибербезопасности и конфиденциальности. Ваши обращения будут рассмотрены бесплатно в срок не позднее 30 дней в зависимости от характера запроса.';

  @override
  String get termsTitle => 'Отказ от ответственности';

  @override
  String get termsHeader => 'ЗАЯВЛЕНИЕ ОБ ОТКАЗЕ ОТ ОТВЕТСТВЕННОСТИ';

  @override
  String get termsIntro =>
      'Используя сервис SecureVault, каждый пользователь считается заранее принявшим следующие положения в силу природы и архитектуры системы и освобождающим Компанию от ответственности в этом отношении в максимально возможном объёме:';

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

  @override
  String get recoverTitle => 'Забыли пароль';

  @override
  String get recoverLink => 'Забыли пароль';

  @override
  String get recoverIntro =>
      'Чтобы восстановить аккаунт, введите имя пользователя, код восстановления, выданный при регистрации, и новый пароль.';

  @override
  String get recoverUsername => 'Имя пользователя';

  @override
  String get recoverToken => 'Код восстановления';

  @override
  String get recoverTokenHint => 'Код, выданный вам при регистрации';

  @override
  String get recoverNewPassword => 'Новый пароль';

  @override
  String get recoverNewPasswordHint => 'Не менее 8 символов';

  @override
  String get recoverButton => 'Сбросить пароль';

  @override
  String get recoverSuccess =>
      'Ваш пароль успешно сброшен. Вы можете войти с новым паролем.';

  @override
  String get recoverErrEmpty => 'Пожалуйста, заполните все поля.';

  @override
  String get recoverErrShortPwd =>
      'Новый пароль должен содержать не менее 8 символов.';

  @override
  String get recoverBackToLogin => 'Вернуться к входу';

  @override
  String get termsH1 => '1. УСЛОВИЯ ТЕХНИЧЕСКОГО ХРАНЕНИЯ И УДАЛЕНИЯ';

  @override
  String get termsP1 =>
      'SecureVault НЕ является облачным хранилищем, постоянным архивом или сервисом резервного копирования данных. Всё зашифрованное содержимое, загруженное в Сервис, автоматически, безвозвратно и необратимо удаляется из системы в момент скачивания получателем или по истечении установленного периода (по умолчанию 1 час), если оно не было скачано. Безопасное хранение и резервное копирование оригинальных копий файлов полностью является ответственностью Пользователя. Компания не несёт ответственности за ущерб, возникший в результате невосстановления данных, удалённых по истечении срока или по техническим причинам.';

  @override
  String get termsH2 => '2. АРХИТЕКТУРА «НУЛЕВОГО РАЗГЛАШЕНИЯ» И УТРАТА ПАРОЛЯ';

  @override
  String get termsP2 =>
      'В соответствии с криптографической структурой Сервиса ключи шифрования создаются исключительно на устройстве Пользователя и не передаются на сервер. В случае утраты, забывания пароля или ключа, связанного со ссылкой для скачивания, либо их попадания к третьим лицам, у Компании технически ОТСУТСТВУЕТ возможность обновить, изменить этот пароль или открыть зашифрованный файл и передать его Пользователю. За утрату данных, возникшую вследствие небрежности при управлении паролем и ключом, несёт исключительную ответственность Пользователь.';

  @override
  String get termsH3 => '3. ПРЕДОСТАВЛЕНИЕ СЕРВИСА «КАК ЕСТЬ»';

  @override
  String get termsP3 =>
      'В максимально возможных пределах, допускаемых статьёй 115 турецкого Обязательственного кодекса и применимым законодательством, SecureVault предоставляет Сервис на условиях «как есть» и «по мере доступности». Компания не даёт никаких прямых или подразумеваемых гарантий того, что Сервис будет работать без перебоев, ошибок, будет полностью защищён от кибератак или пригоден для конкретной цели. Компания не несёт юридической или уголовной ответственности за задержки, невозможность передачи данных или проблемы с доступом, возникшие из-за инфраструктуры Google Play Store, сбоев Cloudflare, неполадок в глобальной интернет-магистрали или форс-мажорных обстоятельств.';

  @override
  String get termsH4 =>
      '4. ОГРАНИЧЕНИЕ В СООТВЕТСТВИИ С ТУРЕЦКИМ ОБЯЗАТЕЛЬСТВЕННЫМ КОДЕКСОМ (СТ. 115)';

  @override
  String get termsP4 =>
      'Ничто в настоящем заявлении об отказе от ответственности не устраняет и не ограничивает установленную законом ответственность Компании в случаях «грубой небрежности» или «обмана». В отношении ущерба, который может возникнуть вследствие лёгкой небрежности Компании, её ответственность ограничивается общей суммой платы за подписку, уплаченной Пользователем Компании через Google Play Store за последние 12 месяцев.';

  @override
  String get regKvkkInfoPrefix =>
      'Подробности об обработке ваших персональных данных доступны в ';

  @override
  String get regKvkkInfoSuffix => '.';

  @override
  String get regTransferConsentText =>
      'Я даю явное согласие на безопасную обработку моих данных зарубежными поставщиками инфраструктуры (Cloudflare R2) в целях осуществления технических операций.';

  @override
  String get regErrTransferConsent =>
      'Вы должны дать согласие на трансграничную передачу данных.';

  @override
  String get cphPremiumTitle => 'Премиум-функция';

  @override
  String get cphPremiumBody =>
      'Функция «Офлайн-зашифрованное сообщение» доступна только участникам Премиум. Перейдите на Премиум, чтобы использовать эту функцию и повышенные лимиты отправки.';

  @override
  String get cphPremiumCancel => 'Отмена';

  @override
  String get cphPremiumGo => 'Перейти на Премиум';

  @override
  String get certTitle => 'Сертификат уничтожения';

  @override
  String get certHomeButton => 'Проверить сертификат уничтожения';

  @override
  String get certIntro =>
      'Подтвердите, что ваш файл действительно уничтожен, с помощью криптографически подписанного сертификата. Вставьте ссылку для скачивания или код.';

  @override
  String get certInputLabel => 'Ссылка для скачивания или код';

  @override
  String get certInputHint => 'https://sifreliveritransferi.com/dl/...';

  @override
  String get certQueryButton => 'Проверить сертификат';

  @override
  String get certPending =>
      'Файл ещё не уничтожен — он всё ещё активен (не скачан и срок не истёк).';

  @override
  String get certDestroyed => 'Этот файл был безвозвратно уничтожен.';

  @override
  String get certNotFound =>
      'Запись об уничтожении для этой ссылки не найдена. Записи хранятся 90 дней.';

  @override
  String get certErrInvalid =>
      'Ссылка или код не распознаны. Вставьте ссылку для скачивания как есть.';

  @override
  String get certErrNetwork => 'Запрос не выполнен. Проверьте подключение.';

  @override
  String get certReasonDownloaded => 'Скачан получателем';

  @override
  String get certReasonExpired => 'Срок истёк';

  @override
  String get certFieldReason => 'Причина уничтожения';

  @override
  String get certFieldUploaded => 'Загружен';

  @override
  String get certFieldDeleted => 'Уничтожен';

  @override
  String get certFieldSize => 'Размер';

  @override
  String get certFieldSignature => 'Подпись (Ed25519)';

  @override
  String get upVaultLabel => 'Сейф с двумя ключами (Премиум)';

  @override
  String get upVaultHint =>
      'Ключ делится на две части: ссылка с Частью 1 отправляется получателю, Часть 2 остаётся у вас. Получатель сможет открыть файл только когда вы передадите вторую часть по надёжному каналу. В этом режиме письмо не отправляется.';

  @override
  String get upVaultLink1 => 'ЧАСТЬ 1 — ОТПРАВЬТЕ ПОЛУЧАТЕЛЮ';

  @override
  String get upVaultLink2 => 'ЧАСТЬ 2 — ОСТАЁТСЯ У ВАС';

  @override
  String get upVaultShare1 => 'Поделиться частью 1';

  @override
  String get upVaultShare2 => 'Поделиться частью 2';

  @override
  String get upVaultEmailSkipped =>
      'Письмо намеренно не отправлено — сервер не видел ни одной части ключа.';

  @override
  String get dlVaultNeeded =>
      'Этот файл защищён сейфом с двумя ключами. Вставьте вторую часть, полученную от отправителя. Загрузка не начнётся, пока часть не будет проверена — ваша одноразовая ссылка в безопасности.';

  @override
  String get dlVaultShareLabel => 'Вторая часть ключа';

  @override
  String get dlVaultShareHint => 'k2.… или ссылка целиком';

  @override
  String get dlVaultMismatch =>
      'Части не совпали — загрузка не начата. Возможно, неверная часть или одна и та же часть вставлена дважды. Ваша ссылка в безопасности; попробуйте снова с правильной частью.';

  @override
  String get dlVaultInvalid =>
      'Часть не распознана. Вставьте часть, начинающуюся с k1. или k2., либо ссылку целиком.';

  @override
  String get upVaultSaveWarning =>
      '⚠️ Сохраните обе ссылки, прежде чем покинуть этот экран. Часть 2 больше не будет показана — если вы её потеряете, файл нельзя будет открыть.';

  @override
  String get cphTtlLabel => 'Срок действия';

  @override
  String get cphTtlNone => 'Без срока';

  @override
  String get cphTtl1h => '1 час';

  @override
  String get cphTtl24h => '24 часа';

  @override
  String get cphTtl7d => '7 дней';

  @override
  String get cphTtlNote =>
      'Если задать срок, это приложение не покажет содержимое просроченного сообщения. Примечание: это защита на уровне приложения — настойчивый человек, у которого есть зашифрованный текст и пароль, всё же сможет получить содержимое другими средствами.';

  @override
  String get cphExpiredError =>
      'Срок действия этого сообщения истёк. Содержимое не может быть показано.';

  @override
  String cphExpiresAt(String date) {
    return 'Действительно до $date';
  }
}
