import 'package:flutter/material.dart';
import '/core/extensions/context_extensions.dart';
import '/core/extensions/generic_extensions.dart';

class TaskDateTime extends StatelessWidget {
  final DateTime dateTime;
  const TaskDateTime({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      bottom: 5,
      end: 15,
      child: Container(
        margin: EdgeInsets.all(3),
        child: Text(
          dateTime.toStringDate(context),
          style: context.theme.textTheme.labelSmall,
        ),
      ),
    );
  }
}
