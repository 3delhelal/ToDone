import 'package:flutter/material.dart';
import '/core/helpers/app_enums.dart';
import '/core/helpers/converters.dart';

class TaskPriorityContainer extends StatelessWidget {
  final TaskPriority priority;
  const TaskPriorityContainer({super.key, required this.priority});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TypeConverter.taskPriorityToColor(priority).withAlpha(220),
        borderRadius: BorderRadiusDirectional.only(
          topEnd: const Radius.circular(15),
          bottomEnd: const Radius.circular(15),
        ),
      ),
      height: 75,
      width: 10,
    );
  }
}
