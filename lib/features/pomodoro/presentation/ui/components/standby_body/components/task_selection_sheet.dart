import 'package:flutter/material.dart';
import '/core/utils/text_utils.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/resources/colors_manager.dart';
import '/core/widgets/spacing.dart';
import '../../../../../../home/domain/entities/task.dart';

class TaskSelectionSheet extends StatelessWidget {
  final List<Task> tasks;
  final Function(String) onTaskSelected;
  final VoidCallback onStartWithoutTask;

  const TaskSelectionSheet({
    super.key,
    required this.tasks,
    required this.onTaskSelected,
    required this.onStartWithoutTask,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localize.createTaskMsg,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ListTile(
              leading: Icon(
                Icons.play_arrow,
                color: ColorsManager.primaryScheme,
              ),
              title: Text(
                context.localize.startWIthoutTaskMsg,
                style: context.theme.textTheme.bodyMedium,
              ),
              onTap: onStartWithoutTask,
            ),

            const Divider(),
            const VerticalSpace(10),
            ...tasks.map(
              (task) => ListTile(
                leading: const Icon(Icons.radio_button_unchecked),
                title: Text(
                  replaceAfterFirstNewLineWithDots(task.title),
                  style: context.theme.textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () => onTaskSelected(task.title),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
