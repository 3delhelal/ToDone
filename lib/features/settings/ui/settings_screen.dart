import 'package:flutter/material.dart';
import '/core/resources/assets_manager.dart';
import '/core/widgets/spacing.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/routing/routes.dart';
import 'components/settings_menu_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localize.settings)),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const VerticalSpace(20),

            SettingsMenuButton(
              lable: context.localize.themeSettings,
              svg: AssetsManager.themeIcon,
              press: () => context.pushNamed(RoutesManager.themeSettings),
            ),
            SettingsMenuButton(
              lable: context.localize.languageSettings,
              svg: AssetsManager.languageIcon,
              press: () {
                context.pushNamed(RoutesManager.languageSettings);
              },
            ),
          ],
        ),
      ),
    );
  }
}
