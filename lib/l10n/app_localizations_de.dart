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
  String get sozH1 => '1. PARTEIEN UND ANNAHME';

  @override
  String get sozP1 =>
      'Diese Nutzungsbedingungen und Dienstleistungsvereinbarung (die „Vereinbarung“) wird zwischen Fatih Göktürk (das „Unternehmen“) und dem Nutzer (der „Nutzer“) geschlossen, der den Ende-zu-Ende-verschlüsselten, temporären Datenübertragungsdienst (der „Dienst“) über die mobile Anwendung SecureVault und die Website sifreliveritransferi.com nutzt. Mit der Nutzung des Dienstes gelten alle Bedingungen dieser Vereinbarung als im Voraus akzeptiert.';

  @override
  String get sozH2 => '2. BESCHREIBUNG UND ARCHITEKTUR DES DIENSTES';

  @override
  String get sozP2 =>
      'SecureVault ist ein temporäres Datenübertragungstool mit einer clientseitigen Zero-Knowledge-Architektur. Im Rahmen des Dienstes gilt:\n• Vom Nutzer hochgeladene Dateien und Texte werden auf dem eigenen Gerät des Nutzers mit dem AES-256-GCM-Algorithmus verschlüsselt, BEVOR sie an den Server gesendet werden.\n• Der Entschlüsselungsschlüssel wird unter keinen Umständen an die Server des Unternehmens übermittelt, dort gespeichert oder verarbeitet.\n• Das Unternehmen kann den Inhalt der auf seinen Servern gehosteten verschlüsselten Daten weder einsehen noch lesen, ändern oder im Falle eines Datenverlusts wiederherstellen.';

  @override
  String get sozH3 => '3. ABONNEMENTMODELL UND ZAHLUNGSBEDINGUNGEN';

  @override
  String get sozP3 =>
      'Der Dienst wird in zwei verschiedenen Nutzungsstufen angeboten, Kostenlos und Premium:\n• Kostenloser Plan: Begrenzt auf maximal 250 MB Dateigröße pro Übertragung und maximal 4 Uploads pro Tag.\n• Premium-Plan (Abonnement): Bietet maximal 2 GB Dateigröße pro Übertragung und 20 Uploads pro Tag.\n\nZahlungsinfrastruktur: Premium-Mitgliedschaften und Zahlungsabwicklung erfolgen vollständig über die In-App-Kauf- und Abonnementinfrastruktur des Google Play Store (Google LLC). Das Unternehmen verarbeitet oder speichert die Kreditkarten-, Bankkonto- oder sonstigen direkten Finanzdaten des Nutzers nicht auf eigenen Servern. Abonnementgebühren, Verlängerungszeiträume und Kündigungsprozesse unterliegen vollständig den Richtlinien des Google Play Store. Der Nutzer hat das Recht, sein Abonnement jederzeit über die Kontoeinstellungen von Google Play zu kündigen.';

  @override
  String get sozH4 => '4. NUTZUNGSBEDINGUNGEN UND VERBOTE';

  @override
  String get sozP4 =>
      'Obwohl SecureVault aufgrund seiner Architektur verschlüsselte Inhalte nicht prüfen kann, verpflichtet sich der Nutzer, den Dienst nur für rechtmäßige Zwecke zu nutzen. Die Übertragung folgender Inhalte oder die Nutzung des Dienstes zu diesen Zwecken ist strengstens untersagt:\n• Inhalte, die geltendem Recht widersprechen, eine Straftat darstellen oder illegale Aktivitäten erleichtern\n• Dateien, die Urheberrechte, Patente, Geschäftsgeheimnisse oder andere Rechte des geistigen Eigentums verletzen\n• Schadsoftware, Viren oder Code, der Zielsysteme schädigen soll\n• Personenbezogene Daten oder private Inhalte, die ohne Zustimmung der betroffenen Personen erlangt wurden\n\nAuf ordnungsgemäße Anfragen rechtmäßiger Behörden hin ist das Unternehmen verpflichtet, die in seinem Besitz befindlichen Zugriffsprotokolle (siehe Datenschutzerklärung/KVKK) mit Justiz- oder Verwaltungsbehörden zu teilen. Da der Inhalt verschlüsselter Dateien/Texte aufgrund der Architektur des Dienstes niemals vom Unternehmen eingesehen werden kann, kann dieser Inhalt nicht Gegenstand dieser Weitergabepflicht sein.';

  @override
  String get sozH5 => '5. ÄNDERUNGEN DER VEREINBARUNG UND DES DIENSTES';

  @override
  String get sozP5 =>
      'Das Unternehmen kann die Bedingungen dieser Vereinbarung oder die Planlimits aufgrund technischer Anforderungen des Dienstes, Änderungen der Google-Play-Store-Richtlinien oder zur Einhaltung geltenden Rechts ändern. Updates, die wesentliche, für den Nutzer nachteilige Änderungen enthalten, werden den Nutzern mindestens 7 Tage vor Inkrafttreten in angemessener Weise über die App oder die Website mitgeteilt. Akzeptiert der Nutzer die neuen Bedingungen nicht, hat er das Recht, die Nutzung des Dienstes zu beenden und sein Abonnement über Google Play zu kündigen.';

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
      'Gemäß dem türkischen Gesetz Nr. 6698 zum Schutz personenbezogener Daten („KVKK“) verarbeitet Fatih Göktürk („SecureVault“ oder das „Unternehmen“) die nachstehend genannten begrenzten personenbezogenen Daten in Übereinstimmung mit dem Gesetz und dem Grundsatz von Treu und Glauben.';

  @override
  String get kvkkH2 =>
      '2. VERARBEITETE PERSONENBEZOGENE DATEN UND TECHNISCHE SICHERHEIT';

  @override
  String get kvkkP2a =>
      'Unser System ist mit einer Zero-Knowledge-Architektur konzipiert, um Ihre personenbezogenen Daten auf ein Mindestmaß zu beschränken. Dementsprechend werden folgende Datenkategorien verarbeitet:';

  @override
  String get kvkkP2b =>
      '• Benutzername / Kontoinformationen — Wird unumkehrbar mit dem SHA-256-Algorithmus gehasht gespeichert; der Originaltext wird nicht auf dem Server gespeichert. Speicherdauer: solange das Konto aktiv ist; wird nach 90 Tagen Inaktivität automatisch gelöscht.\n• Kontopasswort — Wird mit der kryptografischen Funktion Argon2id gehasht gespeichert; Ihr Klartext-Passwort erreicht den Server niemals. Speicherdauer: bis zur Löschung des Kontos.\n• IP-Adresse (Sitzungssicherheit) — Wird zur Überprüfung gleichzeitiger Sitzungen/IP-Adressen als SHA-256-Hash in einer In-Memory-Datenbank (Redis) gespeichert. Speicherdauer: höchstens 24 Stunden, danach automatisch und dauerhaft gelöscht.\n• Zugriffsprotokoll (IP + Konto + Zeit) — Zum Zweck der Verhinderung von Missbrauch des Dienstes, zur Abschreckung und zur Ermöglichung der Offenlegung gegenüber zuständigen Justiz-/Verwaltungsbehörden auf rechtmäßiges Verlangen werden bei jeder Anmeldung an Ihrem Konto Ihre IP-Adresse (im Klartext), der unumkehrbare Hashwert Ihres Kontos und der Anmeldezeitpunkt in einem separaten Sicherheitsprotokoll gespeichert. Speicherdauer: 90 Tage (3 Monate), danach automatisch und dauerhaft gelöscht.\n• E-Mail-Adresse des Empfängers — Wird nur auf Wunsch des Nutzers augenblicklich verarbeitet, um den Download-Link per E-Mail zu senden; wird nicht in der Datenbank gespeichert, sofort vernichtet.\n• Abonnement- und Zahlungsdaten — Da Zahlungen über Google Play erfolgen, werden Ihre Finanzdaten nicht bei uns gespeichert; es werden nur die von Google generierten Abonnementstatus-Verifizierungstoken und Ihre Mitgliedschaftsstufe verarbeitet. Speicherdauer: für die Dauer des Abonnements und im Rahmen gesetzlicher finanzieller Verpflichtungen.\n• Dateiinhalt — Wird zwar nicht als personenbezogenes Datum betrachtet, hochgeladene Dateien werden jedoch vor Erreichen des Servers auf Ihrem Gerät verschlüsselt; das Unternehmen kann nicht auf den Inhalt zugreifen. Speicherdauer: wird sofort nach dem Download oder, falls nicht heruntergeladen, innerhalb von maximal 1 Stunde dauerhaft gelöscht.';

  @override
  String get kvkkH3 => '3. ZWECKE DER VERARBEITUNG UND RECHTSGRUNDLAGEN';

  @override
  String get kvkkP3 =>
      'Ihre personenbezogenen Daten werden gemäß Artikel 5/2 des KVKK auf folgenden Rechtsgrundlagen verarbeitet:\n• Abschluss und Erfüllung eines Vertrags (Art. 5/2-c): Erstellung des Benutzerkontos, Bereitstellung des Premium-Abonnementdienstes durch die Integration mit dem Google Play Store und Betrieb des Dateiübertragungsdienstes.\n• Berechtigtes Interesse des Verantwortlichen (Art. 5/2-f): Verarbeitung von IP-Adressen und Zugriffsprotokollen zur Verhinderung von Missbrauch des Dienstes, zur Gewährleistung der Cybersicherheit (z. B. DDoS-Angriffe, Bot-Zugriffe) und zur Abschreckung.\n• Erfüllung einer gesetzlichen Verpflichtung (Art. 5/2-ç): Weitergabe der in unserem Besitz befindlichen Zugriffsprotokolle an zuständige Justiz- und Verwaltungsbehörden auf deren rechtmäßiges Verlangen.';

  @override
  String get kvkkH4 =>
      '4. ÜBERMITTLUNG PERSONENBEZOGENER DATEN UND HINWEIS ZUR AUSLANDSÜBERMITTLUNG';

  @override
  String get kvkkP4 =>
      'SecureVault führt seine technischen Vorgänge und das Hosting verschlüsselter Daten über die Cloud-Infrastruktur Cloudflare R2 durch. Ihre verschlüsselten Datenblöcke sowie die oben beschriebenen begrenzten Kontodaten (SHA-256-Hashes) werden ins Ausland übermittelt, da sich die Rechenzentrumsinfrastruktur außerhalb der Türkei befindet. Darüber hinaus werden zur Abwicklung der Abonnementprozesse Abonnement-Verifizierungstoken gegenseitig mit den Systemen des Google Play Store (Google LLC, USA) ausgetauscht. Diese Übermittlungen erfolgen sicher auf der Grundlage der ausdrücklichen In-App-Einwilligung des Nutzers und der mit den jeweiligen Dienstanbietern geschlossenen Standardvertragsklauseln (SCC) im Rahmen von Artikel 9 des KVKK. Ihre Daten werden niemals an lokale Dritte oder Werbeunternehmen weitergegeben. Auf ein ordnungsgemäßes rechtmäßiges Verlangen zuständiger Justiz-/Verwaltungsbehörden können die oben beschriebenen Zugriffsprotokolle (Artikel 2) an die betreffenden Behörden weitergegeben werden.';

  @override
  String get kvkkH5 => '5. RECHTE DER BETROFFENEN PERSON UND ANTRAGSTELLUNG';

  @override
  String get kvkkP5 =>
      'Gemäß Artikel 11 des KVKK haben Sie das Recht, zu erfahren, ob Ihre personenbezogenen Daten verarbeitet werden, bei Verarbeitung Auskunft zu verlangen sowie deren Löschung oder Berichtigung zu verlangen. Da Ihre Klartextdaten (z. B. Ihr Benutzername) aufgrund unserer Sicherheitsarchitektur gehasht werden, können Sie zur Identitätsprüfung Ihre Anträge direkt über die Schaltfläche „Mein Konto löschen“ in der App stellen oder sich zur Ausübung Ihrer gesetzlichen Rechte an destek@sifreliveritransferi.com wenden.';

  @override
  String get kvkkH6 => '6. KONTAKT';

  @override
  String get kvkkP6 => 'Bei Fragen: no-reply@sifreliveritransferi.com';

  @override
  String get termsTitle => 'Haftungsausschluss';

  @override
  String get termsHeader => 'HAFTUNGSAUSSCHLUSSERKLÄRUNG';

  @override
  String get termsIntro =>
      'Durch die Nutzung des SecureVault-Dienstes gilt jeder Nutzer aufgrund der Natur und Architektur des Systems als im Voraus mit den folgenden Punkten einverstanden und entbindet das Unternehmen diesbezüglich im weitestmöglichen Umfang von der Haftung:';

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

  @override
  String get svcFolderNotFound => 'Ordner nicht gefunden.';

  @override
  String get svcFolderEmpty => 'Der Ordner scheint leer zu sein.';

  @override
  String get svcFileEmpty =>
      'Die Datei scheint leer zu sein; bitte wählen Sie eine andere Datei.';

  @override
  String get svcPackaging => 'Ordner wird gepackt (unkomprimiertes Zip)...';

  @override
  String get svcPackDone => '✅ Packen abgeschlossen.';

  @override
  String get svcGenKey => 'AES-256-Schlüssel wird auf Ihrem Gerät erzeugt...';

  @override
  String get svcInitUpload => 'Upload-Sitzung wird gestartet...';

  @override
  String get svcEncrypting =>
      'Wird verschlüsselt und hochgeladen (AES-256-GCM, 5-MB-Teile)...';

  @override
  String get svcUploadDone => '✅ Verschlüsselter Upload abgeschlossen.';

  @override
  String get svcSendingEmail => 'Download-Link wird per E-Mail gesendet...';

  @override
  String svcEmailSent(String email) {
    return '✅ E-Mail gesendet → $email';
  }

  @override
  String get svcEmailFailed =>
      '⚠ E-Mail konnte nicht gesendet werden — Sie können den Link manuell teilen.';

  @override
  String get svcInitFailed => 'Upload konnte nicht gestartet werden.';

  @override
  String get svcChunkFailed => 'Teil konnte nicht hochgeladen werden.';

  @override
  String get svcFinalizeFailed => 'Upload konnte nicht abgeschlossen werden.';

  @override
  String get svcTimeout =>
      'Verbindung zum Server fehlgeschlagen (Zeitüberschreitung). Überprüfen Sie Ihre Internetverbindung.';

  @override
  String get svcConnError =>
      'Verbindung konnte nicht hergestellt werden. Überprüfen Sie Ihre Internetverbindung.';

  @override
  String svcUnexpected(String error) {
    return 'Ein unerwarteter Fehler ist aufgetreten: $error';
  }

  @override
  String get dlsvcInvalidKey => 'Ungültiger Verschlüsselungsschlüssel.';

  @override
  String get dlsvcDecryptFailed =>
      'Entschlüsselung fehlgeschlagen: Der Schlüssel ist möglicherweise falsch oder die Datei beschädigt.';

  @override
  String get dlsvcLinkExpired =>
      'Dieser Link ist nicht mehr gültig — er wurde entweder verwendet oder ist abgelaufen.';

  @override
  String dlsvcDownloadFailed(String code) {
    return 'Download fehlgeschlagen (HTTP $code).';
  }

  @override
  String get dlsvcTimeout =>
      'Verbindung zum Server fehlgeschlagen (Zeitüberschreitung).';

  @override
  String get dlsvcConnError =>
      'Verbindung konnte nicht hergestellt werden. Überprüfen Sie Ihre Internetverbindung.';

  @override
  String dlsvcUnexpected(String error) {
    return 'Ein unerwarteter Fehler ist aufgetreten: $error';
  }

  @override
  String get dlsvcDefaultFile => 'Datei';

  @override
  String get authRegisterFailed => 'Registrierung fehlgeschlagen.';

  @override
  String get authLoginFailed => 'Anmeldung fehlgeschlagen.';

  @override
  String get authRecoverFailed => 'Wiederherstellung fehlgeschlagen.';

  @override
  String get authDeleteFailed => 'Kontolöschung fehlgeschlagen.';

  @override
  String get authUnexpectedRetry =>
      'Ein unerwarteter Fehler ist aufgetreten. Bitte versuchen Sie es erneut.';

  @override
  String get cphTitle => 'Verschlüsselte Nachricht';

  @override
  String get cphModeEncrypt => 'Nachricht verschlüsseln';

  @override
  String get cphModeDecrypt => 'Nachricht entschlüsseln';

  @override
  String get cphIntro =>
      'Ihre Nachricht wird vollständig auf diesem Gerät verschlüsselt. Es wird nichts an den Server gesendet. Kopieren Sie den verschlüsselten Text und senden Sie ihn über eine beliebige App (WhatsApp, SMS...); der Empfänger entschlüsselt ihn mit demselben Passwort.';

  @override
  String get cphPlainLabel => 'Zu verschlüsselnde Nachricht';

  @override
  String get cphPlainHint => 'Geben Sie hier Ihre geheime Nachricht ein...';

  @override
  String get cphPassword => 'Passwort';

  @override
  String get cphPasswordHint =>
      'Das Passwort, das Sie mit dem Empfänger teilen';

  @override
  String get cphEncryptBtn => 'Verschlüsseln';

  @override
  String get cphDecryptBtn => 'Entschlüsseln';

  @override
  String get cphEncryptedLabel =>
      'Verschlüsselte Nachricht (kopieren und senden)';

  @override
  String get cphPasteLabel => 'Fügen Sie hier die verschlüsselte Nachricht ein';

  @override
  String get cphPasteHint =>
      'Fügen Sie den erhaltenen verschlüsselten Block ein...';

  @override
  String get cphResultLabel => 'Entschlüsselte Nachricht';

  @override
  String get cphCopy => 'Kopieren';

  @override
  String get cphPaste => 'Einfügen';

  @override
  String get cphCopied => 'In die Zwischenablage kopiert.';

  @override
  String get cphErrEmptyText =>
      'Geben Sie eine zu verschlüsselnde Nachricht ein.';

  @override
  String get cphErrEmptyPwd => 'Geben Sie ein Passwort ein.';

  @override
  String get cphErrEmptyEncrypted =>
      'Fügen Sie die zu entschlüsselnde Nachricht ein.';

  @override
  String get cphErrDecrypt =>
      'Entschlüsselung fehlgeschlagen. Das Passwort ist möglicherweise falsch oder die Nachricht beschädigt.';

  @override
  String get cphPwdWarning =>
      'Teilen Sie das Passwort mit dem Empfänger über einen sicheren Kanal (persönlich, telefonisch). Ohne das Passwort kann die Nachricht nicht entschlüsselt werden.';

  @override
  String get infoFeatures => 'APP-FUNKTIONEN';

  @override
  String get infoFeatCipherTitle => 'Offline verschlüsselte Nachricht';

  @override
  String get infoFeatCipherDesc =>
      'Verschlüsseln Sie Ihre Nachricht mit einem Passwort und kopieren Sie sie; senden Sie sie über WhatsApp, SMS oder eine beliebige App. Die Verschlüsselung erfolgt vollständig auf Ihrem Gerät — die Nachricht wird NIE an den Server gesendet. Der Empfänger entschlüsselt sie in der App mit dem von Ihnen geteilten Passwort. Diese Funktion ist nur in der mobilen App verfügbar.';

  @override
  String get infoFeatFileTitle => 'Verschlüsselte Datei- und Ordnerfreigabe';

  @override
  String get infoFeatFileDesc =>
      'Teilen Sie Ihre Dateien und Ordner Ende-zu-Ende-verschlüsselt mit einem Einmal-Link. Der Link funktioniert einmal und wird kurz danach automatisch gelöscht.';

  @override
  String get infoFeatTextTitle => 'Verschlüsselte Textfreigabe';

  @override
  String get infoFeatTextDesc =>
      'Verschlüsseln Sie lange Texte und teilen Sie sie als Link; der Empfänger liest sie sicher durch Klicken auf den Link.';

  @override
  String get infoFeatLangTitle => 'Unterstützung für 4 Sprachen';

  @override
  String get infoFeatLangDesc =>
      'Türkische, englische, deutsche und russische Oberfläche.';

  @override
  String get recoverTitle => 'Passwort vergessen';

  @override
  String get recoverLink => 'Passwort vergessen';

  @override
  String get recoverIntro =>
      'Um Ihr Konto wiederherzustellen, geben Sie Ihren Benutzernamen, den bei der Registrierung erhaltenen Wiederherstellungscode und Ihr neues Passwort ein.';

  @override
  String get recoverUsername => 'Benutzername';

  @override
  String get recoverToken => 'Wiederherstellungscode';

  @override
  String get recoverTokenHint => 'Der bei der Registrierung erhaltene Code';

  @override
  String get recoverNewPassword => 'Neues Passwort';

  @override
  String get recoverNewPasswordHint => 'Mindestens 8 Zeichen';

  @override
  String get recoverButton => 'Passwort zurücksetzen';

  @override
  String get recoverSuccess =>
      'Ihr Passwort wurde erfolgreich zurückgesetzt. Sie können sich mit Ihrem neuen Passwort anmelden.';

  @override
  String get recoverErrEmpty => 'Bitte füllen Sie alle Felder aus.';

  @override
  String get recoverErrShortPwd =>
      'Das neue Passwort muss mindestens 8 Zeichen lang sein.';

  @override
  String get recoverBackToLogin => 'Zurück zur Anmeldung';

  @override
  String get termsH1 => '1. TECHNISCHE SPEICHERUNGS- UND LÖSCHUNGSBEDINGUNGEN';

  @override
  String get termsP1 =>
      'SecureVault ist KEIN Cloud-Speicher-, dauerhafter Archiv- oder Datensicherungsdienst (Backup). Alle in den Dienst hochgeladenen verschlüsselten Inhalte werden automatisch, dauerhaft und unwiderruflich aus dem System gelöscht, sobald sie vom Empfänger heruntergeladen wurden oder der festgelegte Zeitraum (standardmäßig 1 Stunde) abgelaufen ist, falls sie nicht heruntergeladen wurden. Die sichere Aufbewahrung und Sicherung der Originalkopien von Dateien liegt vollständig in der Verantwortung des Nutzers. Das Unternehmen haftet nicht für Schäden, die dadurch entstehen, dass aufgrund von Fristablauf oder aus technischen Gründen gelöschte Daten nicht wiederhergestellt werden.';

  @override
  String get termsH2 => '2. „ZERO-KNOWLEDGE“-ARCHITEKTUR UND PASSWORTVERLUST';

  @override
  String get termsP2 =>
      'Gemäß der kryptografischen Struktur des Dienstes werden Verschlüsselungsschlüssel ausschließlich auf dem Gerät des Nutzers erzeugt und nicht an den Server übermittelt. Verliert oder vergisst der Nutzer sein Passwort oder den zum Download-Link gehörenden Schlüssel oder gelangt dieser in die Hände Dritter, ist das Unternehmen technisch NICHT in der Lage, dieses Passwort zu erneuern, zu ändern oder die verschlüsselte Datei zu öffnen und dem Nutzer zu übergeben. Für Datenverluste aufgrund von Versäumnissen bei der Passwort- und Schlüsselverwaltung ist ausschließlich der Nutzer verantwortlich.';

  @override
  String get termsH3 => '3. BEREITSTELLUNG DES DIENSTES „WIE BESEHEN“';

  @override
  String get termsP3 =>
      'Im weitestmöglichen, nach Artikel 115 des türkischen Obligationenrechts und den einschlägigen Rechtsvorschriften zulässigen Umfang stellt SecureVault den Dienst „wie besehen“ und „nach Möglichkeit“ bereit. Das Unternehmen gibt keine ausdrückliche oder stillschweigende Garantie dafür ab, dass der Dienst unterbrechungsfrei, fehlerfrei, vollständig frei von Cyberangriffen oder für einen bestimmten Zweck geeignet ist. Das Unternehmen haftet weder zivil- noch strafrechtlich für Verzögerungen, nicht übertragbare Daten oder Zugriffsprobleme, die durch die Infrastruktur des Google Play Store, Cloudflare-Ausfälle, Störungen im globalen Internet-Backbone oder höhere Gewalt verursacht werden.';

  @override
  String get termsH4 =>
      '4. BESCHRÄNKUNG GEMÄSS DEM TÜRKISCHEN OBLIGATIONENRECHT (ART. 115)';

  @override
  String get termsP4 =>
      'Keine Bestimmung dieser Haftungsausschlusserklärung hebt die gesetzliche Haftung des Unternehmens bei „grober Fahrlässigkeit“ oder „Arglist“ auf oder beschränkt diese. Für Schäden, die durch leichte Fahrlässigkeit des Unternehmens entstehen können, ist die Haftung des Unternehmens auf die Gesamtsumme der vom Nutzer in den letzten 12 Monaten über den Google Play Store an das Unternehmen gezahlten Abonnementgebühren beschränkt.';

  @override
  String get regKvkkInfoPrefix =>
      'Details zur Verarbeitung Ihrer personenbezogenen Daten finden Sie in der ';

  @override
  String get regKvkkInfoSuffix => '.';

  @override
  String get regTransferConsentText =>
      'Ich erteile meine ausdrückliche Einwilligung zur sicheren Verarbeitung meiner Daten durch im Ausland ansässige Infrastrukturanbieter (Cloudflare R2) zum Zweck der Durchführung technischer Vorgänge.';

  @override
  String get regErrTransferConsent =>
      'Sie müssen der grenzüberschreitenden Datenübermittlung zustimmen.';

  @override
  String get cphPremiumTitle => 'Premium-Funktion';

  @override
  String get cphPremiumBody =>
      'Die Funktion „Verschlüsselte Offline-Nachricht“ ist Premium-Mitgliedern vorbehalten. Wechseln Sie zu Premium, um diese Funktion und höhere Upload-Limits zu nutzen.';

  @override
  String get cphPremiumCancel => 'Abbrechen';

  @override
  String get cphPremiumGo => 'Premium holen';

  @override
  String get certTitle => 'Löschzertifikat';

  @override
  String get certHomeButton => 'Löschzertifikat abfragen';

  @override
  String get certIntro =>
      'Überprüfen Sie mit einem kryptografisch signierten Zertifikat, dass Ihre Datei wirklich vernichtet wurde. Fügen Sie den Download-Link oder Code ein.';

  @override
  String get certInputLabel => 'Download-Link oder Code';

  @override
  String get certInputHint => 'https://sifreliveritransferi.com/dl/...';

  @override
  String get certQueryButton => 'Zertifikat abfragen';

  @override
  String get certPending =>
      'Die Datei wurde noch nicht vernichtet — sie ist noch aktiv (nicht heruntergeladen und nicht abgelaufen).';

  @override
  String get certDestroyed => 'Diese Datei wurde dauerhaft vernichtet.';

  @override
  String get certNotFound =>
      'Kein Löscheintrag für diesen Link gefunden. Einträge werden 90 Tage aufbewahrt.';

  @override
  String get certErrInvalid =>
      'Link oder Code nicht erkannt. Fügen Sie den Download-Link unverändert ein.';

  @override
  String get certErrNetwork =>
      'Abfrage fehlgeschlagen. Prüfen Sie Ihre Verbindung.';

  @override
  String get certReasonDownloaded => 'Vom Empfänger heruntergeladen';

  @override
  String get certReasonExpired => 'Abgelaufen';

  @override
  String get certFieldReason => 'Löschgrund';

  @override
  String get certFieldUploaded => 'Hochgeladen';

  @override
  String get certFieldDeleted => 'Vernichtet';

  @override
  String get certFieldSize => 'Größe';

  @override
  String get certFieldSignature => 'Signatur (Ed25519)';

  @override
  String get upVaultLabel => 'Zwei-Schlüssel-Tresor (Premium)';

  @override
  String get upVaultHint =>
      'Der Schlüssel wird in zwei Teile aufgeteilt: Der Link zu Teil 1 geht an den Empfänger, Teil 2 bleibt bei Ihnen. Der Empfänger kann die Datei erst öffnen, wenn Sie den zweiten Teil über einen vertrauenswürdigen Kanal übermitteln. In diesem Modus wird keine E-Mail gesendet.';

  @override
  String get upVaultLink1 => 'TEIL 1 — AN DEN EMPFÄNGER SENDEN';

  @override
  String get upVaultLink2 => 'TEIL 2 — BEI IHNEN BEHALTEN';

  @override
  String get upVaultShare1 => 'Teil 1 teilen';

  @override
  String get upVaultShare2 => 'Teil 2 teilen';

  @override
  String get upVaultEmailSkipped =>
      'Die E-Mail wurde absichtlich nicht gesendet — der Server hat keinen Schlüsselteil gesehen.';

  @override
  String get dlVaultNeeded =>
      'Diese Datei ist durch einen Zwei-Schlüssel-Tresor geschützt. Fügen Sie den zweiten Teil ein, den Sie vom Absender erhalten haben. Der Download startet erst nach der Überprüfung des Teils — Ihr Einmal-Link bleibt sicher.';

  @override
  String get dlVaultShareLabel => 'Zweiter Schlüsselteil';

  @override
  String get dlVaultShareHint => 'k2.… oder der vollständige Link';

  @override
  String get dlVaultMismatch =>
      'Die Teile stimmten nicht überein — der Download wurde nicht gestartet. Möglicherweise falscher Teil oder derselbe Teil zweimal eingefügt. Ihr Link ist sicher; versuchen Sie es mit dem richtigen Teil erneut.';

  @override
  String get dlVaultInvalid =>
      'Teil nicht erkannt. Fügen Sie den mit k1. oder k2. beginnenden Teil oder den vollständigen Link ein.';

  @override
  String get upVaultSaveWarning =>
      '⚠️ Speichern Sie beide Links, bevor Sie diesen Bildschirm verlassen. Besonders Teil 2 wird nicht erneut angezeigt — wenn Sie ihn verlieren, kann die Datei nicht geöffnet werden.';
}
