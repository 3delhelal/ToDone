import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/resources/assets_manager.dart';
import '/core/routing/routes.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          NavigationBarIconButton(
            lable: context.localize.pomodoro,
            svgPath: AssetsManager.clockIcon,
            callback: () {
              context.pushNamed(RoutesManager.pomodoro);
            },
          ),
          NavigationBarIconButton(
            lable: context.localize.settings,
            svgPath: AssetsManager.settingsIcon,
            callback: () => context.pushNamed(RoutesManager.settings),
          ),
        ],
      ),
    );
  }
}

class NavigationBarIconButton extends StatelessWidget {
  final String lable;
  final String svgPath;
  final VoidCallback callback;
  const NavigationBarIconButton({
    super.key,
    required this.lable,
    required this.svgPath,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callback,
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPath,
            colorFilter: ColorFilter.mode(
              Theme.of(context).canvasColor,

              BlendMode.srcIn,
            ),
          ),
          Text(lable, style: TextStyle(color: context.theme.canvasColor)),
        ],
      ),
    );
  }
}
