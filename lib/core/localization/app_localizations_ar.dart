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

  //Home Navigation Bar
  @override
  String get timer => 'المؤقت';
  @override
  String get settings => 'الإعدادات';

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
  @override
  String get save => 'حفظ';

  // Settings Screen
  @override
  String get themeSettings => 'المظهر';
  @override
  String get languageSettings => 'اللغة';

  // Theme Settings Screen
  @override
  String get manageThemeMessage => "إعدادات المظهر";
  @override
  String get systemDefaultTheme => "الوضع الافتراضي للجهاز";
  @override
  String get lightTheme => "الوضع المشرق";
  @override
  String get darkTheme => "الوضع المظلم";

  // Pomodoro
  @override
  String get pomodoroTitle => "بومودورو";
  @override
  String get chooseSessionTime => "حدد وقت الجلسة";
  @override
  String get minute => "دقيقة";
  @override
  String get startSession => "إبدا الجلسة";
  @override
  String get pomodoroQuestion => "ماهو البومودورو؟";
  @override
  String get pomodoroAnswer =>
      "بومودورو هي تقنية لإدارة الوقت تساعدك على البقاء مركزًا من خلال العمل في فترات قصيرة (تسمى جلسات) تليها فترات راحة قصيرة.";

  @override
  String get createTaskMsg => "حدد مهمة للعمل عليها";

  @override
  String get startWIthoutTaskMsg => "إبدأ بدون مهمة";
}
