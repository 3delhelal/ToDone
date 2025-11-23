import 'package:flutter/material.dart';
import '../data_source/base_theme_data_source.dart';
import '/core/constants/app_constants.dart';
import '../../domain/repo/base_theme_repo.dart';

class ThemeRepository implements BaseThemeRepository {
  BaseThemeDataSource themeDataSource;
  ThemeRepository(this.themeDataSource);
  @override
  void setUserPreferredThemeMode(String preferredTheme) {
    themeDataSource.setUserPreferredTheme(preferredTheme);
  }

  @override
  ThemeMode getUserPreferredTheme() {
    var storedThemeMode = themeDataSource.getUserPreferredTheme();

    if (storedThemeMode == AppConstants.lightThemeValue) {
      return ThemeMode.light;
    } else if (storedThemeMode == AppConstants.darkThemeValue) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  @override
  void removeUserPreferredTheme() {
    themeDataSource.removeUserPreferredTheme();
  }
}
