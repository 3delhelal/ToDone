import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/theme_cubit.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';
import 'components/theme_card_widget.dart';

class ThemeSettingsScreen extends StatelessWidget {
  const ThemeSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeCubit = context.read<ThemeCubit>();
    return Scaffold(
      appBar: AppBar(title: Text(context.localize.manageThemeMessage)),
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          var themeMode = themeState.themeMode;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const VerticalSpace(25),
                ThemeCardWidget(
                  themeName: context.localize.systemDefaultTheme,
                  icon: Icons.devices,
                  themeMode: ThemeMode.system,
                  selectedThemeMode: themeMode,
                  callBack: () {
                    themeCubit.setPreferredTheme(ThemeMode.system);
                  },
                ),
                ThemeCardWidget(
                  themeName: context.localize.lightTheme,
                  icon: Icons.light_mode_outlined,
                  themeMode: ThemeMode.light,
                  selectedThemeMode: themeMode,
                  callBack: () {
                    themeCubit.setPreferredTheme(ThemeMode.light);
                  },
                ),
                ThemeCardWidget(
                  themeName: context.localize.darkTheme,
                  icon: Icons.dark_mode_outlined,
                  themeMode: ThemeMode.dark,
                  selectedThemeMode: themeMode,
                  callBack: () {
                    themeCubit.setPreferredTheme(ThemeMode.dark);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
