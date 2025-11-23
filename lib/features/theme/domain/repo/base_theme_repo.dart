import 'package:flutter/material.dart';

abstract class BaseThemeRepository {
  void setUserPreferredThemeMode(String preferredTheme);

  ThemeMode getUserPreferredTheme();
  void removeUserPreferredTheme();
}
