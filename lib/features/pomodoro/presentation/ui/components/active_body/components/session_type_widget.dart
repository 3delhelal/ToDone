import 'package:flutter/material.dart';
import '/core/resources/assets_manager.dart';
import '/core/widgets/default_svg_icon.dart';
import '/core/widgets/spacing.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/resources/colors_manager.dart';

class SessionTypeWidget extends StatelessWidget {
  final bool isSession;
  const SessionTypeWidget({super.key, required this.isSession});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    if (isSession) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultSvgIcon(
            assetPath: AssetsManager.sessionIcon,
            color: theme.colorScheme.primary,
          ),

          const HorizontalSpace(5),
          Text(
            context.localize.focusTime,

            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultSvgIcon(
            assetPath: AssetsManager.breakIcon,
            color: ColorsManager.freshGreen,
          ),

          const HorizontalSpace(5),
          Text(
            context.localize.breakTime,
            style: theme.textTheme.titleLarge!.copyWith(
              color: ColorsManager.freshGreen,
            ),
          ),
        ],
      );
    }
  }
}
