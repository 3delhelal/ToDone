import 'package:flutter/material.dart';
import '/core/widgets/svg_icon_button.dart';
import '/core/resources/assets_manager.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/helpers/converters.dart';
import '/core/widgets/confirm_dialog.dart';
import '/core/widgets/spacing.dart';
import '/features/home/domain/entities/task.dart';
import 'widgets/task_date.dart';
import 'widgets/task_priority_container.dart';
import 'widgets/task_check_button.dart';
import 'widgets/task_content.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final void Function() onToggleDone;
  final void Function() onEdit;
  final void Function() onDelete;
  const TaskCard({
    super.key,
    required this.task,
    required this.onToggleDone,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onEdit,
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: constraints.maxWidth,
                height: 75,
                padding: const EdgeInsetsDirectional.only(start: 5),
                margin: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).cardTheme.shadowColor!,
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
                      callBack: onToggleDone,
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
                      callBack: () async {
                        var confrim = await confirmDialog(
                          context,
                          title: context.localize.confirmMessage,
                          msg: context.localize.confirmDeleteCardMsg,
                        );
                        if (confrim) {
                          onDelete();
                        }
                      },
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
    );
  }
}
