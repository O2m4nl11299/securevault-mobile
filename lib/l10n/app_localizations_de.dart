// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'SecureVault';

  @override
  String get appSlogan => 'Ende-zu-Ende-verschlüsselte Dateifreigabe';

  @override
  String get loginUsername => 'Benutzername';

  @override
  String get loginPassword => 'Passwort';

  @override
  String get loginMin3 => 'Mindestens 3 Zeichen';

  @override
  String get loginMin8 => 'Mindestens 8 Zeichen';

  @override
  String get loginRemember => 'Angemeldet bleiben';

  @override
  String get loginRememberSub =>
      'Beim Schließen und erneuten Öffnen angemeldet bleiben';

  @override
  String get loginButton => 'Anmelden';

  @override
  String get loginNoAccount => 'Noch kein Konto? Registrieren';

  @override
  String get homeTooltipPremium => 'Premium';

  @override
  String get homeTooltipInfo => 'Info und Sicherheit';

  @override
  String get homeTooltipLogout => 'Abmelden';

  @override
  String get homeSiteError => 'Website konnte nicht geöffnet werden.';

  @override
  String homeLoggedInAs(String username) {
    return 'Angemeldet: $username';
  }

  @override
  String homePlan(String plan) {
    return 'Tarif: $plan';
  }

  @override
  String get homeSendFile => 'Datei senden';

  @override
  String get homeSendFolder => 'Ordner senden';

  @override
  String get homeEncryptText => 'Text verschlüsseln';

  @override
  String get homeDownloadFile => 'Datei herunterladen';

  @override
  String get homeDeleteAccount => 'Mein Konto löschen';

  @override
  String get regErrKvkk =>
      'Um fortzufahren, müssen Sie die Datenschutzerklärung und die Nutzungsvereinbarung akzeptieren.';

  @override
  String get regErrTerms =>
      'Um fortzufahren, müssen Sie die Nutzungsbedingungen und den Haftungsausschluss akzeptieren.';

  @override
  String get regAccountCreated => 'Konto erstellt';

  @override
  String get regRecoveryInfo =>
      'Ihr Wiederherstellungscode - bewahren Sie ihn sicher auf. Wenn Sie Ihr Passwort vergessen, können Sie nur mit diesem Code wieder auf Ihr Konto zugreifen, und er wird nicht erneut angezeigt.';

  @override
  String get regSavedReturnLogin => 'Gespeichert, zurück zur Anmeldung';

  @override
  String get regTitle => 'Registrieren';

  @override
  String get regUsernameLabel => 'Benutzername (3-32 Zeichen)';

  @override
  String get regUsernameError => 'Muss 3-32 Zeichen lang sein';

  @override
  String get regPasswordLabel => 'Passwort (mindestens 8 Zeichen)';

  @override
  String get regPasswordError => 'Muss mindestens 8 Zeichen lang sein';

  @override
  String get regIReadAccept => 'Ich habe gelesen und akzeptiere: ';

  @override
  String get regKvkkText => 'Datenschutzerklärung';

  @override
  String get regAnd => ' und ';

  @override
  String get regAgreementText => 'Nutzungsvereinbarung';

  @override
  String get regTermsText => 'Nutzungsbedingungen und Haftungsausschluss';

  @override
  String get regButton => 'Registrieren';

  @override
  String get upErrPickFile => 'Bitte wählen Sie zuerst eine Datei aus.';

  @override
  String get upErrEmail => 'Geben Sie eine gültige E-Mail-Adresse ein.';

  @override
  String get upShareSubject => 'Verschlüsselte Datei - SecureVault';

  @override
  String get upTitle => 'Datei senden';

  @override
  String get upPickFile => 'Datei auswählen';

  @override
  String get upRecipientEmail => 'E-Mail-Adresse des Empfängers';

  @override
  String get upRecipientHelper =>
      'Nur zur Erfassung - die Datei wird nicht automatisch an diese Adresse gesendet;\nSie teilen den Link im nächsten Bildschirm über die App Ihrer Wahl.';

  @override
  String get upExtraPwd => 'Zusätzlicher Passwortschutz (optional)';

  @override
  String get upExtraPwdHelper =>
      'Wenn gesetzt, müssen Sie dieses Passwort dem Empfänger separat mitteilen.\nDie Datei kann ohne das Passwort nicht heruntergeladen werden.';

  @override
  String get upEncryptUpload => 'Verschlüsseln und hochladen';

  @override
  String upMinutes(int count) {
    return '$count Minuten';
  }

  @override
  String upHours(int count) {
    return '$count Stunden';
  }

  @override
  String get upSuccess => 'Datei verschlüsselt und hochgeladen.';

  @override
  String upEmailSent(String email) {
    return '📧 Download-Link an $email gesendet.';
  }

  @override
  String get upEmailFailed =>
      '⚠ E-Mail konnte nicht gesendet werden. Sie können den Link unten teilen.';

  @override
  String upLinkExpiry(String ttl) {
    return 'Dieser Link läuft in $ttl ab und kann nur EINMAL verwendet werden.';
  }

  @override
  String get upExtraPwdWarning =>
      'Sie haben ein zusätzliches Passwort festgelegt. Denken Sie daran, es dem Empfänger separat mitzuteilen (über einen anderen Kanal als den Link).';

  @override
  String get upShareLink => 'Link teilen';

  @override
  String get upSendAnother => 'Weitere Datei senden';

  @override
  String get premSuccess =>
      '🎉 Premium aktiviert! Melden Sie sich erneut an, um Ihre neuen Limits zu sehen.';

  @override
  String get premTitle => 'Premium';

  @override
  String get premHeader => 'SecureVault Premium';

  @override
  String get premMonthlySub => 'Monatlich verlängerndes Abonnement';

  @override
  String get premBenefit1 => '2 GB Dateigrößenlimit';

  @override
  String get premBenefit2 => '20 Übertragungen pro Tag';

  @override
  String get premBenefit3 =>
      'Ende-zu-Ende-verschlüsselt, unbegrenzte Sicherheit';

  @override
  String get premBenefit4 => 'Priorisierter Support';

  @override
  String get premLoadingStore => 'Store-Informationen werden geladen...';

  @override
  String get premStoreUnavailable =>
      'Der Store ist derzeit nicht verfügbar. Bitte versuchen Sie es später erneut.';

  @override
  String get premProductUnavailable =>
      'Das Premium-Produkt ist noch nicht bereit. Bitte versuchen Sie es später erneut.';

  @override
  String premBuyButton(String price) {
    return '$price / Monat - Premium holen';
  }

  @override
  String get premRestore => 'Käufe wiederherstellen';

  @override
  String get premAutoRenewInfo =>
      'Das Abonnement verlängert sich am Ende jedes Zeitraums automatisch. Sie können es jederzeit in Ihrem Google Play-Konto kündigen.';

  @override
  String get infoTitle => 'Info und Sicherheit';

  @override
  String get infoSecFlow => 'SICHERHEITSABLAUF';

  @override
  String get infoFlow1 =>
      'Die Datei wird auf Ihrem Gerät in Teilen mit AES-256-GCM verschlüsselt.';

  @override
  String get infoFlow2 =>
      'Verschlüsselte Daten werden über TLS auf den Server hochgeladen — der Schlüssel wird nie gesendet.';

  @override
  String get infoFlow3 =>
      'Der Server erzeugt ein Token; der Download-Link wird auf Ihrem Gerät erstellt.';

  @override
  String get infoFlow4 =>
      'Der Empfänger klickt auf den Link — der Schlüssel (#KEY) erreicht nie den Server.';

  @override
  String get infoFlow5 =>
      'Die verschlüsselte Datei wird gestreamt und sofort entschlüsselt — geringer RAM-Verbrauch.';

  @override
  String get infoFlow6 =>
      'Das Token wird atomar gelöscht; die Datei ist einmalig nutzbar.';

  @override
  String get infoCrypto => 'KRYPTOGRAFIE';

  @override
  String get infoKeyAlgo => 'Algorithmus';

  @override
  String get infoKeyQuantum => 'Quantenresistenz';

  @override
  String get infoValYes => 'Ja';

  @override
  String get infoKeyKey => 'Schlüssel';

  @override
  String get infoKeyNonce => 'Nonce / IV';

  @override
  String get infoValNonce => '96-Bit CSPRNG (pro Teil)';

  @override
  String get infoKeyAuthTag => 'Auth-Tag';

  @override
  String get infoValAuthTag => '128-Bit (pro Teil)';

  @override
  String get infoKeyTransport => 'Transport';

  @override
  String get infoKeyFileLimit => 'Ihr Dateilimit';

  @override
  String get infoKeyTokenLife => 'Token-Lebensdauer';

  @override
  String get infoValTokenLife => '1 Stunde';

  @override
  String get infoKeyUsage => 'Nutzung';

  @override
  String get infoValOnce => 'Einmalig';

  @override
  String get infoKeyServerKey => 'Server-Schlüsselzugriff';

  @override
  String get infoValNever => 'Nie';

  @override
  String get infoWhy => 'WARUM SECUREVAULT?';

  @override
  String get infoWhy1Title => 'Zero Knowledge';

  @override
  String get infoWhy1Desc =>
      'Die Datei wird auf Ihrem Gerät verschlüsselt. Der Server sieht den Inhalt nie.';

  @override
  String get infoWhy2Title => 'Einmalige Nutzung';

  @override
  String get infoWhy2Desc =>
      'Das Token wird nach dem Download atomar gelöscht.';

  @override
  String get infoWhy3Title => 'Zusätzliches Passwort';

  @override
  String get infoWhy3Desc =>
      'Eine zweite Sicherheitsebene — teilen Sie es dem Empfänger über einen separaten Kanal mit.';

  @override
  String get infoWhy4Title => 'Cloudflare R2';

  @override
  String get infoWhy4Desc =>
      'Globale CDN-Infrastruktur, keine Egress-Gebühren.';

  @override
  String get infoWhy5Title => 'Quantenresistent';

  @override
  String get infoWhy5Desc =>
      'Die symmetrische AES-256-GCM-Verschlüsselung gilt auch gegen Quantencomputer als sicher. Schlüssel werden auf Ihrem Gerät erzeugt; es findet kein asymmetrischer Schlüsselaustausch über das Netzwerk statt.';

  @override
  String get infoVirus => 'ÜBER VIRENPRÜFUNG';

  @override
  String get infoVirus1Title => 'Warum keine Prüfung?';

  @override
  String get infoVirus1Desc =>
      'Aufgrund der Zero-Knowledge-Architektur kann der Server den Inhalt der verschlüsselten Datei nicht sehen und daher nicht auf Viren prüfen.';

  @override
  String get infoVirus2Title => 'Unsere Empfehlung';

  @override
  String get infoVirus2Desc =>
      'Wir empfehlen, die heruntergeladenen Dateien mit Ihrer eigenen Antivirensoftware zu prüfen.';

  @override
  String get infoWhoFor => 'FÜR WEN?';

  @override
  String get infoWho1Title => 'Anwälte und Notare';

  @override
  String get infoWho1Desc => 'Senden Sie Mandantendokumente sicher.';

  @override
  String get infoWho2Title => 'Buchhalter';

  @override
  String get infoWho2Desc => 'Teilen Sie Finanzdokumente sicher.';

  @override
  String get infoWho3Title => 'Personalwesen';

  @override
  String get infoWho3Desc => 'Gehaltsabrechnungen und Verträge.';

  @override
  String get infoWho4Title => 'Gesundheitsfachkräfte';

  @override
  String get infoWho4Desc => 'Patientenberichte und Testergebnisse.';

  @override
  String get infoWho5Title => 'Start-ups';

  @override
  String get infoWho5Desc => 'Vertrauliche Dokumente für Investoren.';

  @override
  String get infoWho6Title => 'Privatpersonen';

  @override
  String get infoWho6Desc => 'Ausweiskopien, Reisepass, Bankdokumente.';

  @override
  String get infoDisclaimer => 'HAFTUNGSAUSSCHLUSS';

  @override
  String get infoDisclaimerText =>
      'SecureVault ist ein temporäres Übertragungstool, kein dauerhafter Speicher. Dateien werden nach kurzer Zeit automatisch gelöscht; wir können nicht auf den Inhalt zugreifen und haften nicht für Datenverlust. Bewahren Sie eigene Sicherungskopien wichtiger Dateien auf.';

  @override
  String get infoReadTerms => 'Nutzungsbedingungen lesen';

  @override
  String get txtErrEmpty => 'Geben Sie den zu verschlüsselnden Text ein.';

  @override
  String get txtShareSubject => 'Verschlüsselter Text - SecureVault';

  @override
  String get txtTitle => 'Text verschlüsseln';

  @override
  String get txtLabel => 'Zu verschlüsselnder Text';

  @override
  String get txtHint =>
      'Geben Sie hier den Text ein, den Sie verschlüsseln möchten, oder fügen Sie ihn ein...';

  @override
  String txtCharCount(int count) {
    return '$count Zeichen';
  }

  @override
  String get txtRecipientHelper =>
      'Nur zur Erfassung - Sie teilen den Link im nächsten Bildschirm.';

  @override
  String get txtExtraPwdHelper =>
      'Wenn gesetzt, müssen Sie dieses Passwort dem Empfänger separat mitteilen.';

  @override
  String get txtSuccess => 'Text verschlüsselt und hochgeladen.';

  @override
  String get txtExtraPwdWarning =>
      'Sie haben ein zusätzliches Passwort festgelegt. Denken Sie daran, es dem Empfänger separat mitzuteilen.';

  @override
  String get txtEncryptAnother => 'Weiteren Text verschlüsseln';

  @override
  String get fldErrPick => 'Bitte wählen Sie zuerst einen Ordner aus.';

  @override
  String get fldShareSubject => 'Verschlüsselter Ordner - SecureVault';

  @override
  String get fldTitle => 'Ordner senden';

  @override
  String get fldDefaultName => 'Ordner';

  @override
  String get fldPick => 'Ordner auswählen';

  @override
  String get fldDescription =>
      'Der ausgewählte Ordner wird mit allen darin enthaltenen Dateien in eine einzige .zip-Datei gepackt und verschlüsselt. Der Empfänger öffnet die heruntergeladene Zip-Datei auf seinem eigenen Gerät.';

  @override
  String get fldRecipientHelper =>
      'Der Download-Link wird automatisch an diese Adresse gesendet.';

  @override
  String get fldPackaging => 'Ordner wird gepackt und verschlüsselt...';

  @override
  String get fldPackButton => 'Packen, verschlüsseln und senden';

  @override
  String get fldSuccess => 'Ordner gepackt, verschlüsselt und hochgeladen.';

  @override
  String get fldSendAnother => 'Weiteren Ordner senden';

  @override
  String get dlErrInvalid => 'Ungültiger oder unbekannter SecureVault-Link.';

  @override
  String get dlErrPwdProtected =>
      'Dieser Link ist mit einem zusätzlichen Passwort geschützt — diese Funktion wird in der mobilen App noch nicht unterstützt. Öffnen Sie den Link in einem Browser.';

  @override
  String dlSaved(String path) {
    return 'Gespeichert: $path';
  }

  @override
  String dlSaveFailed(String error) {
    return 'Speichern fehlgeschlagen: $error';
  }

  @override
  String get dlTitle => 'Datei herunterladen';

  @override
  String get dlLinkLabel => 'SecureVault-Link';

  @override
  String get dlPasteTooltip => 'Aus Zwischenablage einfügen';

  @override
  String dlDownloading(String percent) {
    return 'Wird heruntergeladen und entschlüsselt... $percent%';
  }

  @override
  String get dlButton => 'Herunterladen und entschlüsseln';

  @override
  String get dlNote =>
      'Hinweis: Der Link ist einmalig nutzbar — nach dem Herunterladen funktioniert er nicht mehr.';

  @override
  String dlSuccess(String fileName) {
    return '$fileName\nentschlüsselt und gespeichert.';
  }

  @override
  String get dlSaveToDevice => 'Auf Gerät speichern';

  @override
  String get dlShare => 'Teilen';

  @override
  String get dlLargeFileNote =>
      'Da die Datei groß ist, verwenden Sie das Teilen-Menü, anstatt direkt zu speichern (z. B. in einem Dateimanager oder in Drive).';

  @override
  String get dlDownloadAnother => 'Weiteren Link herunterladen';

  @override
  String get delErrConfirm =>
      'Bitte aktivieren Sie zuerst das Bestätigungskästchen.';

  @override
  String get delErrPwd => 'Geben Sie Ihr Passwort ein.';

  @override
  String get delDeleted => 'Ihr Konto wurde dauerhaft gelöscht.';

  @override
  String get delTitle => 'Konto löschen';

  @override
  String get delIrreversible =>
      'Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get delExplanation =>
      'Ihr Konto und alle Ihre Informationen (Benutzername, Passwort-Hash, Wiederherstellungscode) werden dauerhaft gelöscht. Danach können Sie sich nicht mehr mit demselben Benutzernamen anmelden.';

  @override
  String get delPwdLabel => 'Ihr Passwort (zur Bestätigung)';

  @override
  String get delConfirmCheck =>
      'Ich verstehe, dass dies nicht rückgängig gemacht werden kann.';

  @override
  String get delButton => 'Mein Konto dauerhaft löschen';

  @override
  String get sozTitle => 'Nutzungsvereinbarung';

  @override
  String get sozLastUpdate => 'Zuletzt aktualisiert: Juni 2026';

  @override
  String get sozH1 => '1. ANNAHME';

  @override
  String get sozP1 =>
      'Durch die Nutzung des SecureVault-Dienstes gilt diese Vereinbarung als von Ihnen akzeptiert.';

  @override
  String get sozH2 => '2. DIENSTBESCHREIBUNG';

  @override
  String get sozP2 =>
      'SecureVault ist ein Dateifreigabedienst mit einer Zero-Knowledge-Architektur, der clientseitige AES-256-GCM-Verschlüsselung verwendet. Dateien werden verschlüsselt auf dem Server gespeichert, und der Schlüssel wird nie an den Server übertragen.';

  @override
  String get sozH3 => '3. NUTZUNGSBEDINGUNGEN';

  @override
  String get sozP3 =>
      'Das Teilen der folgenden Inhalte ist strengstens untersagt:\n• Illegale Inhalte\n• Urheberrechtsverletzungen\n• Schadsoftware\n• Unbefugtes Teilen personenbezogener Daten';

  @override
  String get sozH4 => '4. DIENSTGRENZEN';

  @override
  String get sozP4 =>
      '• Nichtmitglieder: 5 MB Dateilimit, 3 Übertragungen pro Tag\n• Mitglieder: 250 MB Dateilimit\n• Alle Dateien: 1 Stunde TTL (wird automatisch gelöscht, wenn nicht heruntergeladen)';

  @override
  String get sozH5 => '5. HAFTUNGSAUSSCHLUSS';

  @override
  String get sozP5 =>
      'SecureVault ist nicht für den Inhalt der geteilten Dateien verantwortlich. Aufgrund der Zero-Knowledge-Architektur kann auf den Dateiinhalt nicht zugegriffen werden. Weitere Informationen finden Sie im Bildschirm „Nutzungsbedingungen und Haftungsausschluss“.';

  @override
  String get sozH6 => '6. DIENSTÄNDERUNGEN';

  @override
  String get sozP6 =>
      'SecureVault behält sich das Recht vor, seine Nutzungsbedingungen ohne vorherige Ankündigung zu ändern.';

  @override
  String get sozH7 => '7. KONTOLÖSCHUNG';

  @override
  String get sozP7 =>
      'Sie können Ihr Konto jederzeit löschen. Die Löschung entfernt alle Ihre Daten dauerhaft.';

  @override
  String get sozH8 => '8. KONTAKT';

  @override
  String get sozP8 => 'Bei Fragen: no-reply@sifreliveritransferi.com';

  @override
  String get kvkkTitle => 'Datenschutzerklärung (KVKK)';

  @override
  String get kvkkH1 => '1. VERANTWORTLICHER';

  @override
  String get kvkkP1 =>
      'Als SecureVault (sifreliveritransferi.com) handeln wir als Verantwortlicher im Sinne des türkischen Gesetzes Nr. 6698 zum Schutz personenbezogener Daten.';

  @override
  String get kvkkH2 => '2. VERARBEITETE PERSONENBEZOGENE DATEN';

  @override
  String get kvkkP2a =>
      'Unser System ist mit einer Zero-Knowledge-Architektur konzipiert. Verarbeitete Daten:';

  @override
  String get kvkkP2b =>
      '• Benutzername: Wird als SHA-256-Hash gespeichert. Der ursprüngliche Benutzername wird nicht auf dem Server aufbewahrt.\n• Passwort: Wird mit dem Argon2id-Algorithmus gehasht gespeichert. Klartext-Passwörter werden niemals aufbewahrt.\n• IP-Adresse: Wird als SHA-256-Hash kurzfristig (24 Stunden) in Redis aufbewahrt.\n• E-Mail-Adresse (Empfänger): Wird nur zum Senden des Links verwendet und nicht gespeichert.\n• Dateiinhalt: Erreicht den Server verschlüsselt. Der Schlüssel wird niemals an den Server gesendet.';

  @override
  String get kvkkH3 => '3. ZWECK DER DATENVERARBEITUNG';

  @override
  String get kvkkP3 =>
      '• Erstellung und Verwaltung des Benutzerkontos\n• Bereitstellung des sicheren Dateifreigabedienstes\n• Verhinderung von Missbrauch des Dienstes';

  @override
  String get kvkkH4 => '4. SPEICHERDAUER DER DATEN';

  @override
  String get kvkkP4 =>
      '• Benutzerkonto: Wird automatisch gelöscht, wenn es 90 Tage lang nicht aktiv genutzt wird.\n• Dateien: Werden sofort nach dem Download gelöscht oder innerhalb von 1 Stunde, wenn sie nicht heruntergeladen werden.\n• IP-Hash: Wird nach 24 Stunden automatisch gelöscht.';

  @override
  String get kvkkH5 => '5. RECHTE DER BETROFFENEN PERSON';

  @override
  String get kvkkP5 =>
      'Gemäß Artikel 11 des KVKK;\n• Zu erfahren, ob Ihre Daten verarbeitet werden\n• Die Löschung Ihrer Daten zu verlangen\n• Sie können Ihr Konto über die Option „Mein Konto löschen“ löschen.';

  @override
  String get kvkkH6 => '6. KONTAKT';

  @override
  String get kvkkP6 => 'Bei Fragen: no-reply@sifreliveritransferi.com';

  @override
  String get termsTitle => 'Nutzungsbedingungen';

  @override
  String get termsHeader => 'Nutzungsbedingungen und Haftungsausschluss';

  @override
  String get termsIntro =>
      'Durch die Nutzung des SecureVault-Dienstes akzeptieren Sie die folgenden Bedingungen.';

  @override
  String get terms1Title =>
      'Ende-zu-Ende-Verschlüsselung — Wir haben keinen Zugriff auf den Inhalt';

  @override
  String get terms1Body =>
      'Ihre Dateien und Texte werden auf Ihrem eigenen Gerät mit AES-256-GCM verschlüsselt, BEVOR sie auf den Server hochgeladen werden. Der Entschlüsselungsschlüssel wird niemals an unsere Server gesendet. Daher können wir als Dienstanbieter den Inhalt der von Ihnen gesendeten Dateien nicht einsehen, lesen oder wiederherstellen (Zero-Knowledge-Architektur).';

  @override
  String get terms2Title =>
      'Temporäres Übertragungstool — Kein dauerhafter Speicher';

  @override
  String get terms2Body =>
      'SecureVault ist KEIN Dateispeicher-/Backup-Dienst. Hochgeladene Dateien werden nur für kurze Zeit (standardmäßig 1 Stunde) oder beim ersten Download – je nachdem, was zuerst eintritt – automatisch und dauerhaft gelöscht. Bewahren Sie die Originalkopie Ihrer Dateien immer auf Ihrem eigenen Gerät auf.';

  @override
  String get terms3Title => 'Keine Haftung für Datenverlust';

  @override
  String get terms3Body =>
      'Da Dateien naturgemäß automatisch gelöscht werden, kann SecureVault nicht für Schäden haftbar gemacht werden, die durch das Ablaufen einer Datei, fehlgeschlagenes Herunterladen oder Verlust aus technischen Gründen entstehen. Die Sicherung Ihrer wichtigen Daten liegt vollständig in Ihrer Verantwortung.';

  @override
  String get terms4Title => 'Drittanbieter-Infrastruktur';

  @override
  String get terms4Body =>
      'Verschlüsselte Daten werden vorübergehend in der Cloudflare-R2-Cloud-Infrastruktur gehostet. Da die Daten verschlüsselt sind, kann auch dieser Anbieter den Inhalt nicht sehen. Dienstausfälle oder Richtlinienänderungen des Infrastrukturanbieters liegen außerhalb unserer Kontrolle.';

  @override
  String get terms5Title =>
      'Rechtmäßige Nutzung — Verantwortung liegt beim Nutzer';

  @override
  String get terms5Body =>
      'SecureVault darf nur für rechtmäßige Zwecke verwendet werden. Sie sind allein für die Rechtmäßigkeit der von Ihnen gesendeten Inhalte verantwortlich. Da der Inhalt verschlüsselt ist, kann er nicht überprüft werden; daher liegt jede rechtliche und strafrechtliche Haftung aus Missbrauch des Dienstes beim sendenden Nutzer.';

  @override
  String get terms6Title => 'Dienst wird „wie besehen“ bereitgestellt';

  @override
  String get terms6Body =>
      'SecureVault wird ohne jegliche Garantie „wie besehen“ bereitgestellt. Es kann zu Unterbrechungen, Verzögerungen oder Fehlern im Dienst kommen. Es wird nicht garantiert, dass der Dienst ohne Unterbrechung oder Fehler funktioniert.';

  @override
  String get termsFooter =>
      'Dieser Text dient der allgemeinen Information und stellt keine Rechtsberatung dar.';
}
