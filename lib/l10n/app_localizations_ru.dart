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
      'В соответствии с турецким Законом № 6698 о защите персональных данных («KVKK») Фатих Гёктюрк («SecureVault» или «Компания») обрабатывает указанные ниже ограниченные персональные данные в соответствии с законом и принципом добросовестности.';

  @override
  String get kvkkH2 =>
      '2. ОБРАБАТЫВАЕМЫЕ ПЕРСОНАЛЬНЫЕ ДАННЫЕ И ТЕХНИЧЕСКАЯ БЕЗОПАСНОСТЬ';

  @override
  String get kvkkP2a =>
      'Наша система спроектирована с архитектурой нулевого разглашения, с целью минимизации объёма хранимых персональных данных. Соответственно, обрабатываются следующие категории данных:';

  @override
  String get kvkkP2b =>
      '• Имя пользователя / данные учётной записи — необратимо хранится в виде хеша по алгоритму SHA-256; исходный текст на сервере не хранится. Срок хранения: пока учётная запись активна; автоматически удаляется после 90 дней бездействия.\n• Пароль учётной записи — хранится в виде хеша по криптографической функции Argon2id; ваш пароль в открытом виде никогда не попадает на сервер. Срок хранения: до удаления учётной записи.\n• IP-адрес (безопасность сеанса) — хранится в виде хеша SHA-256 во внутрипамятной базе данных (Redis) для проверки одновременных сеансов/IP. Срок хранения: не более 24 часов, после чего автоматически и безвозвратно удаляется.\n• Запись журнала доступа (IP + учётная запись + время) — в целях предотвращения злоупотребления Услугой, обеспечения сдерживающего эффекта и возможности раскрытия информации компетентным судебным/административным органам по законному запросу; при каждом входе в вашу учётную запись ваш IP-адрес (в открытом виде), необратимый хеш вашей учётной записи и время входа сохраняются в отдельной записи безопасности. Срок хранения: 90 дней (3 месяца), после чего автоматически и безвозвратно удаляется.\n• Адрес электронной почты получателя — обрабатывается мгновенно, только по запросу Пользователя, для отправки ссылки для скачивания по электронной почте; не сохраняется в базе данных, немедленно уничтожается.\n• Данные о подписке и оплате — поскольку платежи производятся через Google Play, ваши финансовые данные у нас не хранятся; обрабатываются только токены подтверждения статуса подписки, сгенерированные Google, и уровень вашего членства. Срок хранения: на протяжении действия подписки и в соответствии с применимыми финансовыми обязательствами.\n• Содержимое файла — хотя и не считается персональными данными, загружаемые файлы шифруются на вашем устройстве до достижения сервера; Компания не имеет доступа к содержимому. Срок хранения: безвозвратно удаляется в момент скачивания или, если не скачано, в течение максимум 1 часа.';

  @override
  String get kvkkH3 => '3. ЦЕЛИ ОБРАБОТКИ И ПРАВОВЫЕ ОСНОВАНИЯ';

  @override
  String get kvkkP3 =>
      'Ваши персональные данные обрабатываются на следующих правовых основаниях в соответствии со статьёй 5/2 KVKK:\n• Заключение и исполнение договора (ст. 5/2-c): создание учётной записи пользователя, предоставление услуги подписки Премиум через интеграцию с Google Play Store и обеспечение работы сервиса передачи файлов.\n• Законный интерес оператора данных (ст. 5/2-f): обработка IP-адресов и записей журналов доступа в целях предотвращения злоупотребления Услугой, обеспечения кибербезопасности (например, DDoS-атаки, доступ ботов) и обеспечения сдерживающего эффекта.\n• Исполнение законодательного требования (ст. 5/2-ç): предоставление имеющихся у нас записей журналов доступа компетентным судебным и административным органам по их законному запросу.';

  @override
  String get kvkkH4 =>
      '4. ПЕРЕДАЧА ПЕРСОНАЛЬНЫХ ДАННЫХ И УВЕДОМЛЕНИЕ О ТРАНСГРАНИЧНОЙ ПЕРЕДАЧЕ';

  @override
  String get kvkkP4 =>
      'SecureVault осуществляет свои технические операции и размещение зашифрованных данных через облачную инфраструктуру Cloudflare R2. Ваши блоки зашифрованных данных, а также указанные выше ограниченные данные учётной записи (хеши SHA-256), передаются за границу, поскольку инфраструктура центра обработки данных находится за пределами Турции. Кроме того, для целей осуществления процессов подписки токены подтверждения подписки взаимно передаются системам Google Play Store (Google LLC, США). Эти передачи осуществляются безопасно на основании явного согласия Пользователя в приложении и стандартных договорных положений (SCC), заключённых с соответствующими поставщиками услуг, в рамках статьи 9 KVKK. Ваши данные никогда не передаются местным третьим лицам или рекламным компаниям. По надлежащему законному запросу компетентных судебных/административных органов указанные выше записи журналов доступа (статья 2) могут быть переданы соответствующим органам.';

  @override
  String get kvkkH5 => '5. ПРАВА СУБЪЕКТА ДАННЫХ И ПОРЯДОК ОБРАЩЕНИЯ';

  @override
  String get kvkkP5 =>
      'В соответствии со статьёй 11 KVKK вы имеете право узнать, обрабатываются ли ваши персональные данные, запросить информацию, если они обрабатывались, а также потребовать их удаления или исправления. Поскольку ваши данные в открытом виде (например, имя пользователя) хешируются в силу нашей архитектуры безопасности, для подтверждения вашей личности вы можете подать запрос непосредственно через кнопку «Удалить мой аккаунт» в приложении или обратиться по адресу destek@sifreliveritransferi.com для реализации своих законных прав.';

  @override
  String get kvkkH6 => '6. КОНТАКТЫ';

  @override
  String get kvkkP6 => 'По вопросам: no-reply@sifreliveritransferi.com';

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
}
