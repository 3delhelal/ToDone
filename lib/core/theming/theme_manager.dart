import 'package:flutter/material.dart';
import '/core/resources/colors_manager.dart';
import '/core/resources/font_styles_manager.dart';

class ThemeManager {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorsManager.lightThemePrimaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: ColorsManager.lightThemeBackgroundColor,
      canvasColor: ColorsManager.lightThemeCanvasColor,
      cardColor: ColorsManager.lightThemeCardColor,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsManager.lightThemePrimaryColor,
        foregroundColor: ColorsManager.white,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          side: BorderSide(color: Colors.black38),
        ),
        toolbarHeight: 40,
      ),
      textTheme: TextTheme(
        titleLarge: TextStylesManager.titleLargeLight,
        titleMedium: TextStylesManager.titleMediumLight,
        titleSmall: TextStylesManager.titleSmallLight,
        bodyLarge: TextStylesManager.bodyLargeLight,
        bodyMedium: TextStylesManager.bodyMediumLight,
        bodySmall: TextStylesManager.bodySmallLight,
        labelLarge: TextStylesManager.captionLargeLight,
        labelMedium: TextStylesManager.captionMediumLight,
        labelSmall: TextStylesManager.captionSmallLight,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: ColorsManager.darkThemePrimaryColor,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: ColorsManager.darkThemeBackgroundColor,
      cardColor: ColorsManager.darkThemeCardColor,
      canvasColor: ColorsManager.darkThemeCanvasColor,
      textTheme: TextTheme(
        titleLarge: TextStylesManager.titleLargeDark,
        titleMedium: TextStylesManager.titleMediumDark,
        titleSmall: TextStylesManager.titleSmallDark,
        bodyLarge: TextStylesManager.bodyLargeDark,
        bodyMedium: TextStylesManager.bodyMediumDark,
        bodySmall: TextStylesManager.bodySmallDark,
        labelLarge: TextStylesManager.captionLargeDark,
        labelMedium: TextStylesManager.captionMediumDark,
        labelSmall: TextStylesManager.captionSmallDark,
      ),
    );
  }
}
