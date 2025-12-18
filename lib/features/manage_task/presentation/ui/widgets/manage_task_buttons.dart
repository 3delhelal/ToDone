import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/resources/colors_manager.dart';
import '../../controller/mange_task_cubit.dart';

class ManageTaskButtons extends StatelessWidget {
  const ManageTaskButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                context.theme.colorScheme.primary,
              ),
            ),
            onPressed: () {
              context.read<ManageTaskCubit>().saveTask(context);
              context.pop();
            },
            child: Text(
              context.localize.save,
              style: context.theme.textTheme.bodyLarge!.copyWith(
                color: ColorsManager.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: context.theme.colorScheme.primary,
                width: 1.5,
              ),
            ),
            onPressed: () {
              context.pop();
            },
            child: Text(
              context.localize.cancel,
              style: context.theme.textTheme.bodyLarge!.copyWith(
                color: context.theme.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
