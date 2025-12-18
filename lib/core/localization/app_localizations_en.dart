import '/core/constants/language_constants.dart';
import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([super.locale = LanguageConstants.enLanguageCode]);

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
  String get pomodoro => 'Pomodoro';
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
  String get pomodoroHint1 => "Remember!";
  @override
  String get pomodoroHint2 => "Small steps lead to big achievements";

  @override
  String get createTaskMsg => "Choose task to work on";
  @override
  String get startWIthoutTaskMsg => "Start without a task";
  @override
  String get withoutTask => "Without a task";
  @override
  String get enjoyBreak => "Enjoy your break!";
  @override
  String get focusTime => "Focus Time";
  @override
  String get breakTime => "Break Time";
  @override
  String get endBreak => "End break";
  @override
  String get endSession => "End Session";
  @override
  String get sessionComplete => "Session Completed 👏";
  @override
  String get breakTimeMsg => "Time to take a break and recharge your focus.";

  @override
  String get startBreak => "Start break";
  @override
  String get cycleCompleted => "Cycle Completed 🎉";

  @override
  String get finishedCycleMsg =>
      "You've finished a full Pomodoro cycle! Great job staying focused!";

  @override
  String get startNewCycle => "Start new Cycle";

  // Language Feature
  @override
  String get selectLanguageMessage => "Select Language";
  @override
  String get unKnown => "UnKnown";

  // Languages
  @override
  String get ar => 'Arabic';
  @override
  String get en => 'English';
  @override
  String get es => 'Spanish';
  @override
  String get de => 'German';
  @override
  String get fr => 'French';
}
