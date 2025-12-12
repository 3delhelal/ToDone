import 'package:flutter/material.dart';
import '/core/helpers/app_enums.dart';

class ResponsiveHelper {
  final BuildContext context;

  ResponsiveHelper(this.context);

  double get width => MediaQuery.of(context).size.width;

  double get height => MediaQuery.of(context).size.height;

  bool get isPortrait =>
      MediaQuery.of(context).orientation == Orientation.portrait;
  bool get isLandscape =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  DeviceType get deviceType {
    if (width < 600) return DeviceType.mobile;
    return DeviceType.tablet;
  }

  bool get isMobile => deviceType == DeviceType.mobile;
  bool get isTablet => deviceType == DeviceType.tablet;
}
