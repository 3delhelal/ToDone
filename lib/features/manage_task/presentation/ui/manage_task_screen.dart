import 'package:flutter/material.dart';
import '/core/widgets/spacing.dart';
import '/core/di.dart';
import '/features/manage_task/presentation/ui/widgets/manage_task_appbar.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';
import '/features/home/domain/entities/task.dart';
import 'widgets/note_text_field.dart';
import 'widgets/title_text_field.dart';
import 'widgets/priority_selector.dart';
import 'widgets/time_picke_widget.dart';
import 'widgets/manage_task_buttons.dart';

class ManageTaskScreen extends StatelessWidget {
  final Task? task;
  ManageTaskScreen({super.key, this.task}) {
    getIt<ManageTaskCubit>().initScreen(task);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ManageTaskAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(25),
              TitleTextField(initalValue: task?.title),
              verticalSpace(25),
              NoteTextField(initalValue: task?.note),
              verticalSpace(25),
              PrioritySelector(),
              verticalSpace(25),
              TimeSelector(),
              verticalSpace(25),
              ManageTaskButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
