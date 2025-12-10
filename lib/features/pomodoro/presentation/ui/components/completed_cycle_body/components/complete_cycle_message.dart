import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';

class CompleteCycleMessages extends StatelessWidget {
  const CompleteCycleMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.localize.cycleCompleted,
          textAlign: TextAlign.center,
          style: context.theme.textTheme.titleLarge,
        ),
        const VerticalSpace(12),
        Text(
          context.localize.finishedCycleMsg,
          textAlign: TextAlign.center,
          style: context.theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
