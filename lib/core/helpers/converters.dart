import 'package:flutter/widgets.dart';
import '/core/helpers/app_enums.dart';
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
}
