import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';

class PomodoroDescription extends StatelessWidget {
  const PomodoroDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Text(
            context.localize.pomodoroHint1,
            style: theme.textTheme.titleMedium,
          ),
          const VerticalSpace(10),

          Text(
            context.localize.pomodoroHint2,
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
