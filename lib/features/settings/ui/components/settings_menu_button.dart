import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';

class SettingsMenuButton extends StatelessWidget {
  const SettingsMenuButton({
    super.key,
    required this.lable,
    required this.svg,
    required this.press,
  });

  final String lable;
  final String svg;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),

          padding: WidgetStateProperty.all(EdgeInsets.all(20)),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
              height: 30,
              width: 30,
              colorFilter: ColorFilter.mode(
                context.theme.colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            const HorizontalSpace(20),
            Expanded(
              child: Text(lable, style: context.theme.textTheme.titleSmall),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: context.theme.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
