import '/core/constants/language_constants.dart';
import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([super.locale = LanguageConstants.arLanguageCode]);

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
  String get pomodoro => 'بومودورو';
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
  String get pomodoroHint1 => "تذكر!";
  @override
  String get pomodoroHint2 => "الخطوات الصغيرة تؤدي إلى إنجازات كبيرة";

  @override
  String get createTaskMsg => "حدد مهمة للعمل عليها";

  @override
  String get startWIthoutTaskMsg => "إبدأ بدون مهمة";

  @override
  String get withoutTask => "بدون مهمة";
  @override
  @override
  String get enjoyBreak => "إستمتع بوقت الراحة!";
  @override
  String get focusTime => "وقت التركيز";
  @override
  String get breakTime => "وقت الراحة";
  @override
  String get endBreak => "إنهاء الراحة";
  @override
  String get endSession => "إنهاء الجلسة";
  @override
  String get sessionComplete => "إكتملت الجلسة 👏";
  @override
  String get breakTimeMsg => "حان وقت الراحة وإستعادة التركيز.";

  @override
  String get startBreak => "إبدأ الراحة";

  @override
  String get cycleCompleted => "إكتملت الدورة 🎉";

  @override
  String get finishedCycleMsg =>
      "أحسنت! لقد أكملت دورة بومودورو كاملة، عمل رائع.";

  @override
  String get startNewCycle => "إبدأ دورة جديدة";

  // Language Feature.
  @override
  String get selectLanguageMessage => "إختر اللغة";
  @override
  String get unKnown => "غير معروف";

  // Languages
  @override
  String get ar => 'العربية';
  @override
  String get en => 'الإنجليزية';
  @override
  String get es => 'الإسبانية';
  @override
  String get de => 'الألمانية';
  @override
  String get fr => 'الفرنسية';
}
