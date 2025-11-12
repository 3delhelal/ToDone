import 'app_localizations.dart';
import '../constants/app_constants.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([super.locale = AppConstants.englishLocaleCode]);

  @override
  String get welcomeMessage => 'مرحباً بالعالم!';

  // Home Feature
  @override
  String get tasksList => 'قائمة المهام';
  @override
  String get unDone => 'غير مكتمل';
  @override
  String get done => 'مكتمل';
  @override
  String get somethingWentWrong => 'حدث خطأ أثناء استرداد المهام.';
  @override
  String get noTasksHere => 'لا يوجد مهام هنا 👀.';
  @override
  String get confirmMessage => 'هل انت متأكد؟';
  @override
  String get confirmDeleteCardMsg => 'سيتم حذف المهمة بشكل نهائي.';

  // Common Widgets
  @override
  String get cancel => 'إلغاء';
  @override
  String get confirm => 'تأكيد';
}
