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

  // Common Widgets
  @override
  String get cancel => 'Cancel';
  @override
  String get confirm => 'Confirm';
}
