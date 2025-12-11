class AppConstants {
  static const String appName = "ToDone";
  // Home Feature
  static const Duration animationDuration = Duration(milliseconds: 400);
  static const int datePickerEndDate = 2100;
  // Theme Feature
  static const String lightThemeValue = "light_mode";
  static const String darkThemeValue = "dark_mode";
  static const String preferredThemeKey =
      "preferredTheme"; // Shared Preferences Key
  // Pomodoro
  static const String breakSecondsDurationKey = 'breakSeconds';
  static const String sessionSecondsDurationKey = 'sessionSeconds';
  static const int sessionSecondsDuration = 1200;
  static const int breakSecondsDuration = 300;
  static const int sessionMinutePickerMinValue = 5;
  static const int sessionMinutePickerMaxValue = 60;
  static const int sessionMinutePickerItemCount = 12;
  static const int breakMinutePickerMinValue = 5;
  static const int breakMinutePickerMaxValue = 60;
  static const int breakMinutePickerItemCount = 12;
}
