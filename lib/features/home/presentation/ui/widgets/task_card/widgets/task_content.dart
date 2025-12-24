import 'package:flutter/material.dart';
import '/core/utils/text_utils.dart';
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
    return Container(
      margin: EdgeInsets.all(1.5),
      width: width ?? 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            replaceAfterFirstNewLineWithDots(title),
            style: context.theme.textTheme.titleSmall!.copyWith(
              decoration: isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationThickness: 2,
              decorationColor: context.theme.textTheme.titleSmall!.color,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          if (note != null)
            Text(
              replaceAfterFirstNewLineWithDots(note!),
              style: context.theme.textTheme.labelMedium!.copyWith(
                decoration: isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                overflow: TextOverflow.ellipsis,
                decorationThickness: 2,
                decorationColor: context.theme.textTheme.labelMedium!.color,
              ),
              maxLines: 1,
            ),
        ],
      ),
    );
  }
}
