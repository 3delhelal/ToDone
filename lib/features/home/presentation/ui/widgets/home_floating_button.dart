import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/extensions/context_extensions.dart';
import '/core/resources/assets_manager.dart';
import '/core/resources/colors_manager.dart';
import '/core/routing/routes.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: SvgPicture.asset(
        AssetsManager.addTaskIcon,

        colorFilter: ColorFilter.mode(ColorsManager.white, BlendMode.srcIn),
      ),
      onPressed: () => context.pushNamed(RoutesManager.manageTask),
    );
  }
}
