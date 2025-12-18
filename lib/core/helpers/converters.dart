import 'package:flutter/widgets.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/helpers/app_enums.dart';
import '../constants/language_constants.dart';
import '../resources/colors_manager.dart';

class TypeConverter {
  static Color taskPriorityToColor(TaskPriority priority) {
    switch (priority) {
      case TaskPriority.high:
        return ColorsManager.softRed;
      case TaskPriority.medium:
        return ColorsManager.amberOrange;
      case TaskPriority.low:
        return ColorsManager.freshGreen;
    }
  }

  static String getLanguageName(BuildContext context, String languageCode) {
    switch (languageCode) {
      case LanguageConstants.enLanguageCode:
        return context.localize.en;
      case LanguageConstants.arLanguageCode:
        return context.localize.ar;
      case LanguageConstants.esLanguageCode:
        return context.localize.es;
      case LanguageConstants.deLanguageCode:
        return context.localize.de;
      case LanguageConstants.frLanguageCode:
        return context.localize.fr;
      default:
        return context.localize.unKnown;
    }
  }
}
