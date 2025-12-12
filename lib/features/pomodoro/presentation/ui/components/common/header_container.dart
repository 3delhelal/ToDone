import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  final Widget child;
  final bool isTabletLayout;
  const HeaderContainer({
    super.key,
    required this.child,
    this.isTabletLayout = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: isTabletLayout ? 70 : 100,
      child: child,
    );
  }
}
