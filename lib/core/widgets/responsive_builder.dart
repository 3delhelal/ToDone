import 'package:flutter/material.dart';
import '../helpers/responsive_helper.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;

  const ResponsiveBuilder({super.key, required this.mobile, this.tablet});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveHelper(context);

    if (responsive.isTablet && tablet != null) return tablet!;
    return mobile;
  }
}
