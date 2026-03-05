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
  String get unDone => 'To Do';
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

  // Privacy Policy
  @override
  String get privacyPolicy => 'Privacy Policy';
  @override
  String get lastUpdatedMessage => 'Last updated: February 19, 2026';
  @override
  String get introductionLabel => 'Introduction';
  @override
  String get introductionMessage =>
      "ToDone is a simple and focused productivity application (Todo & Pomodoro) designed to help users manage their tasks and focus better, without collecting or tracking any personal data.\n\nYour privacy is extremely important to us. This Privacy Policy explains clearly and transparently how ToDone handles user data.";
  @override
  String get informationCollectionAndUseLabel =>
      'Information Collection and Use';
  @override
  String get informationCollectionAndUseParagraph =>
      'ToDone does NOT collect any personal information.\n\nSpecifically:';
  @override
  String get informationCollectionAndUseBullet1 =>
      'We do not collect names, emails, phone numbers, or any identifiers.';
  @override
  String get informationCollectionAndUseBullet2 =>
      'We do not collect usage analytics or behavioral data.';
  @override
  String get informationCollectionAndUseBullet3 =>
      'We do not track users in any way.';
  @override
  String get informationCollectionAndUseBullet4 =>
      'We do not require account creation or login.';
  @override
  String get everyThingIsLocallyMessage =>
      'All tasks, settings, and app data remain locally on the user’s device only.';
  @override
  String get permissionsLable => 'Permissions';
  @override
  String get permissionsAppNameMessage => 'ToDone:';
  @override
  String get permissionsAppMessage1 =>
      'Does not request any device permissions.';
  @override
  String get permissionsAppMessage2 =>
      'Does not access camera, microphone, storage, contacts, location, or any system resources.';
  @override
  String get permissionsAppMessage3 =>
      'If sounds or timers are used inside the app, they operate entirely within the app without accessing or sharing any external data.';
  @override
  String get dataStorageLable => 'Data Storage';
  @override
  String get dataStorageMessage1 =>
      'All data (tasks, timers, preferences) are stored locally on the device.';
  @override
  String get dataStorageMessage2 => 'No data is uploaded to any server.';
  @override
  String get dataStorageMessage3 =>
      'No cloud storage or external databases are used.';
  @override
  String get dataStorageMessage4 =>
      'If the user deletes the app, all stored data is permanently removed.';
  @override
  String get thirdPartyServicesLabel => 'Third-Party Services';
  @override
  String get thirdPartyServicesMessage => 'ToDone does not use:';
  @override
  String get thirdPartyServicesBullet1 => 'Third-party analytics services';
  @override
  String get thirdPartyServicesBullet2 => 'Advertising networks';
  @override
  String get thirdPartyServicesBullet3 => 'Tracking SDKs';
  @override
  String get thirdPartyServicesBullet4 =>
      'External APIs that collect user data';
  @override
  String get childrensPrivacy => "Children’s Privacy";
  @override
  String get childrensPrivacyMessage =>
      "ToDone does not knowingly collect any data from anyone, including children under the age of 13. Since no data is collected at all, the app is safe for all age groups.";
  @override
  String get changesToThisPrivacyPolicyLabel =>
      "Changes to This Privacy Policy";
  @override
  String get changesToThisPrivacyPolicyMessage =>
      "If this Privacy Policy is updated in the future, changes will be reflected on this page with an updated revision date.\n\nAny changes will always respect the core principle of ToDone: no data collection, ever.";
  @override
  String get contactUs => "Contact Us";
  @override
  String get contactUsMessage =>
      "If you have any questions, concerns, or requests regarding this Privacy Policy or your data, please contact us directly at:\n\nEmail: 3delhelal@gmail.com\n\nToDone was built with privacy-first principles. Your data stays yours. Always.";
}
