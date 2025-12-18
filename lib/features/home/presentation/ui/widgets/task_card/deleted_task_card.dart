import 'package:flutter/material.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/svg_icon_button.dart';
import '/core/resources/assets_manager.dart';
import '/core/helpers/converters.dart';
import '/core/widgets/spacing.dart';
import '/features/home/domain/entities/task.dart';
import 'widgets/task_date.dart';
import 'widgets/task_priority_container.dart';
import 'widgets/task_check_button.dart';
import 'widgets/task_content.dart';

class DeletableTaskCard extends StatelessWidget {
  final Task task;
  final Animation<double> animation;
  final Color backgroundColor;
  const DeletableTaskCard({
    super.key,
    required this.task,
    required this.animation,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: SizeTransition(
        sizeFactor: animation,
        axisAlignment: 0.0,
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: 85,
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TaskCheckButton(
                        checked: task.done,
                        callBack: () {},
                        borderColor: TypeConverter.taskPriorityToColor(
                          task.priority,
                        ),
                      ),
                      const HorizontalSpace(10),
                      TaskContent(
                        isDone: task.done,
                        title: task.title,
                        note: task.note,
                        width: constraints.maxWidth * 0.66,
                      ),
                      Spacer(),
                      SVGIconButton(
                        svgPath: AssetsManager.deleteIcon,
                        callBack: () {},
                      ),
                      const HorizontalSpace(5),
                      TaskPriorityContainer(priority: task.priority),
                    ],
                  ),
                );
              },
            ),
            TaskDateTime(dateTime: task.time),
          ],
        ),
      ),
    );
  }
}
