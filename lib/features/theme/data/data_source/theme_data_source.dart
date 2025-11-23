import 'package:shared_preferences/shared_preferences.dart';
import '/core/constants/app_constants.dart';
import 'base_theme_data_source.dart';

class ThemeDataSource implements BaseThemeDataSource {
  final SharedPreferences sharedPreferences;
  ThemeDataSource(this.sharedPreferences);
  @override
  void setUserPreferredTheme(String preferredTheme) {
    sharedPreferences.setString(AppConstants.preferredThemeKey, preferredTheme);
  }

  @override
  String getUserPreferredTheme() {
    String? preferredLanguage = sharedPreferences.getString(
      AppConstants.preferredThemeKey,
    );
    return preferredLanguage ?? "";
  }

  @override
  void removeUserPreferredTheme() {
    sharedPreferences.remove(AppConstants.preferredThemeKey);
  }
}
