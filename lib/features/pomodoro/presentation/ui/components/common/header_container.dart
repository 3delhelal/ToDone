import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  final Widget child;
  const HeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center, height: 80, child: child);
  }
}
