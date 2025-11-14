import 'package:flutter/material.dart';
import 'package:todone/core/extensions/context_extensions.dart';
import '/core/di.dart';
import '/features/manage_task/presentation/ui/widgets/manage_task_appbar.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';
import '/features/home/domain/entities/task.dart';

class ManageTaskScreen extends StatelessWidget {
  final Task? task;
  ManageTaskScreen({super.key, this.task}) {
    if (task != null) {
      getIt<ManageTaskCubit>().initScreen(task);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ManageTaskAppbar(),
      body: Center(child: Text(context.localize.welcomeMessage)),
    );
  }
}
