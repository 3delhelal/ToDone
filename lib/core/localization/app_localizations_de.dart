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
}
