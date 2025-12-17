import 'package:flutter/material.dart';
import '/core/resources/colors_manager.dart' show ColorsManager;
import '/core/resources/font_weights_manager.dart' show FontWeightsManager;

class TextStylesManager {
  //            >>>LIGHT THEME<<<
  // Title
  static TextStyle titleLargeLight = TextStyle(
    fontSize: 18,
    fontWeight: FontWeightsManager.bold,
    color: ColorsManager.black,
  );

  static TextStyle titleMediumLight = TextStyle(
    fontSize: 17,
    fontWeight: FontWeightsManager.semiBold,
    color: ColorsManager.black,
  );

  static TextStyle titleSmallLight = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightsManager.medium,
    color: ColorsManager.black,
  );
  // Body
  // Light Theme Body
  static TextStyle bodyLargeLight = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightsManager.medium,
    color: ColorsManager.black,
  );

  static TextStyle bodyMediumLight = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.black,
  );

  static TextStyle bodySmallLight = TextStyle(
    fontSize: 13,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.black,
  );
  // Caption
  static TextStyle captionLargeLight = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightsManager.medium,
    color: ColorsManager.grey,
  );

  static TextStyle captionMediumLight = TextStyle(
    fontSize: 13,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.grey,
  );

  static TextStyle captionSmallLight = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.grey,
  );
  //        >>>DARK THEME<<<
  // Title
  static TextStyle titleLargeDark = TextStyle(
    fontSize: 18,
    fontWeight: FontWeightsManager.bold,
    color: ColorsManager.white,
  );

  static TextStyle titleMediumDark = TextStyle(
    fontSize: 17,
    fontWeight: FontWeightsManager.semiBold,
    color: ColorsManager.white,
  );

  static TextStyle titleSmallDark = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightsManager.medium,
    color: ColorsManager.white,
  );
  // Body
  static TextStyle bodyLargeDark = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightsManager.medium,
    color: ColorsManager.white,
  );

  static TextStyle bodyMediumDark = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.white,
  );

  static TextStyle bodySmallDark = TextStyle(
    fontSize: 13,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.white,
  );
  // Caption
  static TextStyle captionLargeDark = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightsManager.medium,
    color: ColorsManager.grey,
  );

  static TextStyle captionMediumDark = TextStyle(
    fontSize: 13,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.grey,
  );

  static TextStyle captionSmallDark = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightsManager.regular,
    color: ColorsManager.grey,
  );
}
