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

  // Privacy Policy
  @override
  String get privacyPolicy => 'سياسة الخصوصية';
  @override
  String get lastUpdatedMessage => 'آخر تحديث: 19 فبراير 2026';
  @override
  String get introductionLabel => 'مقدمة';
  @override
  String get introductionMessage =>
      "تطبيق ToDone هو تطبيق إنتاجية بسيط ومُركز (للمهام وتقنية بومودورو) مصمم لمساعدة المستخدمين على إدارة مهامهم والتركيز بشكل أفضل، دون جمع أو تتبع أي بيانات شخصية.\n\nخصوصيتك في غاية الأهمية بالنسبة لنا. تشرح سياسة الخصوصية هذه بوضوح وشفافية كيف يتعامل تطبيق ToDone مع بيانات المستخدم.";
  @override
  String get informationCollectionAndUseLabel => 'جمع المعلومات واستخدامها';
  @override
  String get informationCollectionAndUseParagraph =>
      'لا يجمع تطبيق ToDone أي معلومات شخصية.\n\nوتحديداً:';
  @override
  String get informationCollectionAndUseBullet1 =>
      'نحن لا نجمع الأسماء أو عناوين البريد الإلكتروني أو أرقام الهواتف أو أي معرّفات أخرى.';
  @override
  String get informationCollectionAndUseBullet2 =>
      'نحن لا نجمع بيانات تحليلات الاستخدام أو البيانات السلوكية.';
  @override
  String get informationCollectionAndUseBullet3 =>
      'نحن لا نتتبع المستخدمين بأي شكل من الأشكال.';
  @override
  String get informationCollectionAndUseBullet4 =>
      'نحن لا نطلب إنشاء حساب أو تسجيل الدخول.';
  @override
  String get everyThingIsLocallyMessage =>
      'تبقى جميع المهام والإعدادات وبيانات التطبيق محلياً على جهاز المستخدم فقط.';
  @override
  String get permissionsLable => 'الأذونات';
  @override
  String get permissionsAppNameMessage => 'تطبيق ToDone:';
  @override
  String get permissionsAppMessage1 => 'لا يطلب أي أذونات من الجهاز.';
  @override
  String get permissionsAppMessage2 =>
      'لا يصل إلى الكاميرا أو الميكروفون أو مساحة التخزين أو جهات الاتصال أو الموقع أو أي من موارد النظام.';
  @override
  String get permissionsAppMessage3 =>
      'إذا تم استخدام الأصوات أو المؤقتات داخل التطبيق، فإنها تعمل بالكامل داخل التطبيق دون الوصول إلى أي بيانات خارجية أو مشاركتها.';
  @override
  String get dataStorageLable => 'تخزين البيانات';
  @override
  String get dataStorageMessage1 =>
      'يتم تخزين جميع البيانات (المهام، المؤقتات، التفضيلات) محلياً على الجهاز.';
  @override
  String get dataStorageMessage2 => 'لا يتم رفع أي بيانات إلى أي خادم.';
  @override
  String get dataStorageMessage3 =>
      'لا يتم استخدام أي تخزين سحابي أو قواعد بيانات خارجية.';
  @override
  String get dataStorageMessage4 =>
      'إذا قام المستخدم بحذف التطبيق، يتم إزالة جميع البيانات المخزنة بشكل دائم.';
  @override
  String get thirdPartyServicesLabel => 'خدمات الطرف الثالث';
  @override
  String get thirdPartyServicesMessage => 'لا يستخدم تطبيق ToDone:';
  @override
  String get thirdPartyServicesBullet1 => 'خدمات تحليلات تابعة لجهات خارجية';
  @override
  String get thirdPartyServicesBullet2 => 'شبكات إعلانية';
  @override
  String get thirdPartyServicesBullet3 => 'حزم برمجيات (SDKs) خاصة بالتتبع';
  @override
  String get thirdPartyServicesBullet4 =>
      'واجهات برمجة تطبيقات (APIs) خارجية تجمع بيانات المستخدم';
  @override
  String get childrensPrivacy => "خصوصية الأطفال";
  @override
  String get childrensPrivacyMessage =>
      "لا يجمع تطبيق ToDone عن قصد أي بيانات من أي شخص، بما في ذلك الأطفال دون سن 13 عاماً. وبما أنه لا يتم جمع أي بيانات على الإطلاق، فإن التطبيق آمن لجميع الفئات العمرية.";
  @override
  String get changesToThisPrivacyPolicyLabel =>
      "تغييرات على سياسة الخصوصية هذه";
  @override
  String get changesToThisPrivacyPolicyMessage =>
      "إذا تم تحديث سياسة الخصوصية هذه في المستقبل، فستنعكس التغييرات على هذه الصفحة مع تحديث تاريخ المراجعة.\n\nستحترم أي تغييرات دائماً المبدأ الأساسي لتطبيق ToDone: لا يتم جمع البيانات، على الإطلاق.";
  @override
  String get contactUs => "اتصل بنا";
  @override
  String get contactUsMessage =>
      "إذا كانت لديك أي أسئلة أو استفسارات أو طلبات بخصوص سياسة الخصوصية هذه أو بياناتك، يُرجى التواصل معنا مباشرة عبر:\n\nالبريد الإلكتروني: 3delhelal@gmail.com\n\nتم بناء تطبيق ToDone بمبادئ تضع الخصوصية في المقام الأول. بياناتك ملكك وحدك. دائماً.";
}
