import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import '/core/constants/app_constants.dart';

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
    Locale(AppConstants.englishLocaleCode),
    Locale(AppConstants.arabicLocaleCode),
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
    AppConstants.arabicLocaleCode,
    AppConstants.englishLocaleCode,
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case AppConstants.arabicLocaleCode:
      return AppLocalizationsAr();
    case AppConstants.englishLocaleCode:
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
