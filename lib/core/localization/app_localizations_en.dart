import 'app_localizations.dart';
import '../constants/app_constants.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([super.locale = AppConstants.englishLocaleCode]);

  @override
  String get welcomeMessage => 'Hello World!';

  // Tasks Screen
  @override
  String get tasksList => 'Tasks List';
  @override
  String get unDone => 'To-do';
  @override
  String get done => 'Done';
}
