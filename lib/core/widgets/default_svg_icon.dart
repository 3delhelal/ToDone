import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultSvgIcon extends StatelessWidget {
  final String assetPath;
  final Color color;
  const DefaultSvgIcon({
    super.key,
    required this.assetPath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: SvgPicture.asset(
        assetPath,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
