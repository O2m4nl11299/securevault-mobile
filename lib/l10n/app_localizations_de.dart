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
}
