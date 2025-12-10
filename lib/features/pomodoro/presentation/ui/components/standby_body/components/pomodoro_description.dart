import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';

class PomodoroDescription extends StatelessWidget {
  const PomodoroDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      children: [
        Text(
          context.localize.pomodoroQuestion,
          style: theme.textTheme.titleLarge,
        ),
        const VerticalSpace(10),

        Text(
          context.localize.pomodoroAnswer,
          style: theme.textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
