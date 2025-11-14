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

  // Manage Task
  @override
  String get addTask => 'إضافة مهمة';
  @override
  String get editTask => 'تعديل مهمة';
  @override
  String get title => 'عنوان';
  @override
  String get titleHint => 'ادخل عنوان المهمة';
  @override
  String get note => 'ملحوظة';
  @override
  String get noteHint => 'اضف ملحوظة (اختياري)';
  @override
  String get priority => 'الأولوية';
  @override
  String get lowPriority => 'منخفضة';
  @override
  String get meduimPriority => 'متوسطة';
  @override
  String get highPriority => 'مرتفعة';
  @override
  String get time => 'الوقت';
}
