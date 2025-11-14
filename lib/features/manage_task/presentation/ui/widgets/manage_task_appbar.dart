import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/helpers/app_enums.dart';
import '/core/extensions/context_extensions.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';

class ManageTaskAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ManageTaskAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          BlocSelector<ManageTaskCubit, ManageTaskState, MangeTaskScreenType>(
            selector: (state) {
              return state.screenType;
            },
            builder: (context, screenType) {
              return Text(
                screenType == MangeTaskScreenType.add
                    ? context.localize.addTask
                    : context.localize.editTask,
              );
            },
          ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
