import 'app_localizations.dart';
import '../constants/app_constants.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([super.locale = AppConstants.englishLocaleCode]);

  @override
  String get welcomeMessage => 'Hello World!';

  // Home Feature
  @override
  String get tasksList => 'Tasks List';
  @override
  String get unDone => 'To-do';
  @override
  String get done => 'Done';
  @override
  String get somethingWentWrong => 'Something went wrong while fetching tasks.';
  @override
  String get noTasksHere => 'No tasks here 👀.';
  @override
  String get confirmMessage => 'Are you sure?';
  @override
  String get confirmDeleteCardMsg => 'The task will be deleted permanently.';

  //Home Navigation Bar
  @override
  String get timer => 'Timer';
  @override
  String get settings => 'Settings';

  // Common Widgets
  @override
  String get cancel => 'Cancel';
  @override
  String get confirm => 'Confirm';

  // Manage Task
  @override
  String get addTask => 'Add task';
  @override
  String get editTask => 'Edit task';
  @override
  String get title => 'Title';
  @override
  String get titleHint => 'Entre a task\'s title';
  @override
  String get note => 'Note';
  @override
  String get noteHint => 'add a note (optional)';
  @override
  String get priority => 'Priority';
  @override
  String get lowPriority => 'Low';
  @override
  String get meduimPriority => 'Medium';
  @override
  String get highPriority => 'High';
  @override
  String get time => 'Time';
  @override
  String get save => 'Save';

  // Settings Screen
  @override
  String get themeSettings => 'Theme';
  @override
  String get languageSettings => 'Language';

  // Theme Settings Screen
  @override
  String get manageThemeMessage => "Select Theme";
  @override
  get systemDefaultTheme => "System Default";
  @override
  get lightTheme => "Light Theme";
  @override
  get darkTheme => "Dark Theme";

  // Pomodoro
  @override
  String get pomodoroTitle => "Pomodoro";
  @override
  String get chooseSessionTime => "Choose session time";
  @override
  String get minute => "Minute";
  @override
  String get startSession => "Start session";
  @override
  String get pomodoroQuestion => "What is Pomodoro?";
  @override
  String get pomodoroAnswer =>
      "Pomodoro is a time‑management technique that helps you stay focused by working in short bursts \n(called sessions) followed by short breaks.";

  @override
  String get createTaskMsg => "Choose task to work on";

  @override
  String get startWIthoutTaskMsg => "Start without a task";
}
