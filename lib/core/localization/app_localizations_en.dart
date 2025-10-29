import 'app_localizations.dart';
import '../constants/app_constants.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([super.locale = AppConstants.englishLocaleCode]);

  @override
  @override
  String get welcomeMessage => 'Hello World!';
}
