import '/core/constants/language_constants.dart';
import 'app_localizations.dart';

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([super.locale = LanguageConstants.deLanguageCode]);

  @override
  String get welcomeMessage => 'Hallo Welt!';

  // Home Feature
  @override
  String get tasksList => 'Aufgabenliste';
  @override
  String get unDone => 'Offen';
  @override
  String get done => 'Erledigt';
  @override
  String get somethingWentWrong =>
      'Beim Abrufen der Aufgaben ist ein Fehler aufgetreten.';
  @override
  String get noTasksHere => 'Keine Aufgaben hier 👀.';
  @override
  String get confirmMessage => 'Bist du sicher?';
  @override
  String get confirmDeleteCardMsg => 'Die Aufgabe wird dauerhaft gelöscht.';

  // Home Navigation Bar
  @override
  String get pomodoro => 'Pomodoro';
  @override
  String get settings => 'Einstellungen';

  // Common Widgets
  @override
  String get cancel => 'Abbrechen';
  @override
  String get confirm => 'Bestätigen';

  // Manage Task
  @override
  String get addTask => 'Aufgabe hinzufügen';
  @override
  String get editTask => 'Aufgabe bearbeiten';
  @override
  String get title => 'Titel';
  @override
  String get titleHint => 'Gib den Aufgabentitel ein';
  @override
  String get note => 'Notiz';
  @override
  String get noteHint => 'füge eine Notiz hinzu (optional)';
  @override
  String get priority => 'Priorität';
  @override
  String get lowPriority => 'Niedrig';
  @override
  String get meduimPriority => 'Mittel';
  @override
  String get highPriority => 'Hoch';
  @override
  String get time => 'Zeit';
  @override
  String get save => 'Speichern';

  // Settings Screen
  @override
  String get themeSettings => 'Thema';
  @override
  String get languageSettings => 'Sprache';

  // Theme Settings Screen
  @override
  String get manageThemeMessage => "Thema auswählen";
  @override
  get systemDefaultTheme => "Systemstandard";
  @override
  get lightTheme => "Helles Thema";
  @override
  get darkTheme => "Dunkles Thema";

  // Pomodoro
  @override
  String get pomodoroTitle => "Pomodoro";
  @override
  String get chooseSessionTime => "Sitzungszeit auswählen";
  @override
  String get minute => "Minute";
  @override
  String get startSession => "Sitzung starten";
  @override
  String get pomodoroHint1 => "Erinnern!";
  @override
  String get pomodoroHint2 => "Kleine Schritte führen zu großen Erfolgen";

  @override
  String get createTaskMsg => "Wähle eine Aufgabe zum Arbeiten";
  @override
  String get startWIthoutTaskMsg => "Ohne Aufgabe starten";
  @override
  String get withoutTask => "Ohne Aufgabe";
  @override
  String get enjoyBreak => "Genieße deine Pause!";
  @override
  String get focusTime => "Fokuszeit";
  @override
  String get breakTime => "Pausenzeit";
  @override
  String get endBreak => "Pause beenden";
  @override
  String get endSession => "Sitzung beenden";
  @override
  String get sessionComplete => "Sitzung abgeschlossen 👏";
  @override
  String get breakTimeMsg => "Zeit für eine Pause, um deinen Fokus aufzuladen.";

  @override
  String get startBreak => "Pause starten";
  @override
  String get cycleCompleted => "Zyklus abgeschlossen 🎉";

  @override
  String get finishedCycleMsg =>
      "Du hast einen vollständigen Pomodoro-Zyklus abgeschlossen! Großartige Arbeit!";

  @override
  String get startNewCycle => "Neuen Zyklus starten";

  // Language Feature
  @override
  String get selectLanguageMessage => "Sprache auswählen";
  @override
  String get unKnown => "Unbekannt";

  // Languages
  @override
  String get ar => 'Arabisch';
  @override
  String get en => 'Englisch';
  @override
  String get es => 'Spanisch';
  @override
  String get de => 'Deutsch';
  @override
  String get fr => 'Französisch';

  // Privacy Policy
  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';
  @override
  String get lastUpdatedMessage => 'Zuletzt aktualisiert: 19. Februar 2026';
  @override
  String get introductionLabel => 'Einführung';
  @override
  String get introductionMessage =>
      "ToDone ist eine einfache und zielgerichtete Produktivitäts-App (Todo & Pomodoro), die Benutzern hilft, ihre Aufgaben zu verwalten und sich besser zu konzentrieren, ohne persönliche Daten zu sammeln oder zu verfolgen.\n\nIhre Privatsphäre ist uns extrem wichtig. Diese Datenschutzrichtlinie erklärt klar und transparent, wie ToDone mit Benutzerdaten umgeht.";
  @override
  String get informationCollectionAndUseLabel =>
      'Erfassung und Nutzung von Informationen';
  @override
  String get informationCollectionAndUseParagraph =>
      'ToDone sammelt KEINE persönlichen Informationen.\n\nIm Detail:';
  @override
  String get informationCollectionAndUseBullet1 =>
      'Wir sammeln keine Namen, E-Mails, Telefonnummern oder andere Identifikatoren.';
  @override
  String get informationCollectionAndUseBullet2 =>
      'Wir sammeln keine Nutzungsanalysen oder Verhaltensdaten.';
  @override
  String get informationCollectionAndUseBullet3 =>
      'Wir verfolgen Nutzer in keiner Weise.';
  @override
  String get informationCollectionAndUseBullet4 =>
      'Wir verlangen keine Kontoerstellung oder Anmeldung.';
  @override
  String get everyThingIsLocallyMessage =>
      'Alle Aufgaben, Einstellungen und App-Daten verbleiben ausschließlich lokal auf dem Gerät des Nutzers.';
  @override
  String get permissionsLable => 'Berechtigungen';
  @override
  String get permissionsAppNameMessage => 'ToDone:';
  @override
  String get permissionsAppMessage1 => 'Fordert keine Geräteberechtigungen an.';
  @override
  String get permissionsAppMessage2 =>
      'Greift nicht auf Kamera, Mikrofon, Speicher, Kontakte, Standort oder andere Systemressourcen zu.';
  @override
  String get permissionsAppMessage3 =>
      'Wenn Töne oder Timer innerhalb der App verwendet werden, funktionieren diese vollständig innerhalb der App, ohne auf externe Daten zuzugreifen oder diese zu teilen.';
  @override
  String get dataStorageLable => 'Datenspeicherung';
  @override
  String get dataStorageMessage1 =>
      'Alle Daten (Aufgaben, Timer, Präferenzen) werden lokal auf dem Gerät gespeichert.';
  @override
  String get dataStorageMessage2 =>
      'Es werden keine Daten auf irgendwelche Server hochgeladen.';
  @override
  String get dataStorageMessage3 =>
      'Es werden keine Cloud-Speicher oder externen Datenbanken verwendet.';
  @override
  String get dataStorageMessage4 =>
      'Wenn der Nutzer die App löscht, werden alle gespeicherten Daten dauerhaft entfernt.';
  @override
  String get thirdPartyServicesLabel => 'Dienste von Drittanbietern';
  @override
  String get thirdPartyServicesMessage => 'ToDone verwendet keine:';
  @override
  String get thirdPartyServicesBullet1 => 'Analysedienste von Drittanbietern';
  @override
  String get thirdPartyServicesBullet2 => 'Werbenetzwerke';
  @override
  String get thirdPartyServicesBullet3 => 'Tracking-SDKs';
  @override
  String get thirdPartyServicesBullet4 =>
      'Externe APIs, die Benutzerdaten sammeln';
  @override
  String get childrensPrivacy => "Privatsphäre von Kindern";
  @override
  String get childrensPrivacyMessage =>
      "ToDone sammelt wissentlich keine Daten von irgendjemandem, einschließlich Kindern unter 13 Jahren. Da überhaupt keine Daten gesammelt werden, ist die App für alle Altersgruppen sicher.";
  @override
  String get changesToThisPrivacyPolicyLabel =>
      "Änderungen an dieser Datenschutzrichtlinie";
  @override
  String get changesToThisPrivacyPolicyMessage =>
      "Wenn diese Datenschutzrichtlinie in Zukunft aktualisiert wird, werden die Änderungen auf dieser Seite mit einem aktualisierten Revisionsdatum berücksichtigt.\n\nAlle Änderungen werden immer das Grundprinzip von ToDone respektieren: niemals Datenerfassung.";
  @override
  String get contactUs => "Kontakt";
  @override
  String get contactUsMessage =>
      "Wenn Sie Fragen, Bedenken oder Anfragen bezüglich dieser Datenschutzrichtlinie oder Ihrer Daten haben, kontaktieren Sie uns bitte direkt unter:\n\nE-Mail: 3delhelal@gmail.com\n\nToDone wurde nach Datenschutz-Prinzipien entwickelt. Ihre Daten bleiben Ihre Daten. Immer.";
}
