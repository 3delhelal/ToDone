import 'app_localizations.dart';
import '../constants/app_constants.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([super.locale = AppConstants.englishLocaleCode]);

  @override
  String get welcomeMessage => 'مرحباً بالعالم!';

  // Tasks Screen
  @override
  String get tasksList => 'قائمة المهام';
  @override
  String get unDone => 'غير مكتمل';
  @override
  String get done => 'مكتمل';
}
