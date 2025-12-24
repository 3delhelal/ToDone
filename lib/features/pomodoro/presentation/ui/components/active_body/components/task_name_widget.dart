import 'package:flutter/material.dart';
import '/core/utils/text_utils.dart';
import '/core/helpers/extensions/context_extensions.dart';

class TaskNameWidget extends StatelessWidget {
  final String? taskName;
  const TaskNameWidget({super.key, required this.taskName});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: EdgeInsets.all(2.5),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: context.theme.cardTheme.shadowColor!,
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 2),
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Text(
        taskName != null
            ? replaceAfterFirstNewLineWithDots(taskName!)
            : context.localize.withoutTask,
        style: theme.textTheme.titleMedium,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
