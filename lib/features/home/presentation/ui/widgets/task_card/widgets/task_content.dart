import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';

class TaskContent extends StatelessWidget {
  final String title;
  final String? note;
  final bool isDone;
  final double? width;
  const TaskContent({
    super.key,
    required this.isDone,
    required this.title,
    this.note,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: context.theme.textTheme.titleSmall!.copyWith(
              decoration: isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          if (note != null)
            Text(
              note!,
              style: context.theme.textTheme.labelMedium!.copyWith(
                decoration: isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
