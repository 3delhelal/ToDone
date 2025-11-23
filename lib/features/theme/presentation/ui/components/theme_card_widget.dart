import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';

class ThemeCardWidget extends StatelessWidget {
  final String themeName;
  final IconData icon;
  final ThemeMode themeMode;
  final ThemeMode selectedThemeMode;
  final Function()? callBack;

  const ThemeCardWidget({
    super.key,
    required this.themeName,
    required this.icon,
    required this.themeMode,
    required this.selectedThemeMode,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = themeMode == selectedThemeMode;
    return Container(
      margin: EdgeInsets.only(bottom: 12),

      child: Card(
        clipBehavior: Clip.hardEdge,
        color: context.theme.cardColor,

        child: ListTile(
          contentPadding: EdgeInsets.all(5),
          onTap: callBack,
          leading: Icon(icon, color: context.theme.colorScheme.primary),
          title: Text(themeName, style: context.theme.textTheme.titleSmall),
          trailing: Icon(
            isSelected
                ? Icons.radio_button_checked_rounded
                : Icons.radio_button_off_outlined,
            color: context.theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
