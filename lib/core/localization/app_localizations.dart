import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import '/core/constants/language_constants.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';

abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale(LanguageConstants.enLanguageCode),
    Locale(LanguageConstants.arLanguageCode),
    Locale(LanguageConstants.esLanguageCode),
    Locale(LanguageConstants.deLanguageCode),
    Locale(LanguageConstants.frLanguageCode),
  ];

  String get welcomeMessage;

  // Home Feature
  String get tasksList;

  String get unDone;

  String get done;

  String get somethingWentWrong;

  String get noTasksHere;

  String get confirmMessage;

  String get confirmDeleteCardMsg;

  //Home Navigation Bar
  String get pomodoro;
  String get settings;

  // Common Widgets
  String get cancel;

  String get confirm;

  // Manage Task
  String get addTask;

  String get editTask;

  String get title;

  String get titleHint;

  String get note;

  String get noteHint;

  String get priority;

  String get lowPriority;

  String get meduimPriority;

  String get highPriority;

  String get time;

  String get save;

  // Settings Screen
  String get themeSettings;
  String get languageSettings;

  // Theme Settings Screen
  String get manageThemeMessage;
  String get systemDefaultTheme;
  String get lightTheme;
  String get darkTheme;

  // Pomodoro
  String get pomodoroTitle;

  String get chooseSessionTime;

  String get startSession;

  String get pomodoroQuestion;

  String get pomodoroAnswer;

  String get createTaskMsg;

  String get startWIthoutTaskMsg;

  String get minute;

  String get enjoyBreak;

  String get withoutTask;

  String get focusTime;

  String get breakTime;

  String get endBreak;

  String get endSession;

  String get sessionComplete;

  String get breakTimeMsg;

  String get startBreak;

  String get cycleCompleted;

  String get finishedCycleMsg;

  String get startNewCycle;

  // Language Feature.
  String get selectLanguageMessage;
  String get unKnown;

  // Languages
  String get en;
  String get ar;
  String get es;
  String get de;
  String get fr;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    LanguageConstants.enLanguageCode,
    LanguageConstants.arLanguageCode,
    LanguageConstants.esLanguageCode,
    LanguageConstants.deLanguageCode,
    LanguageConstants.frLanguageCode,
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case LanguageConstants.arLanguageCode:
      return AppLocalizationsAr();
    case LanguageConstants.enLanguageCode:
      return AppLocalizationsEn();
    case LanguageConstants.esLanguageCode:
      return AppLocalizationsEs();
    case LanguageConstants.deLanguageCode:
      return AppLocalizationsDe();
    case LanguageConstants.frLanguageCode:
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
