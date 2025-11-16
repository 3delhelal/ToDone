import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/core/helpers/extensions/context_extensions.dart';

class SVGIconButton extends StatelessWidget {
  final String svgPath;
  final void Function() callBack;
  const SVGIconButton({
    super.key,
    required this.svgPath,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
        onPressed: callBack,
        icon: SvgPicture.asset(
          svgPath,

          colorFilter: ColorFilter.mode(
            context.theme.colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
