import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/resources/colors_manager.dart';
import '/core/helpers/app_enums.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';
import '/core/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';

class PrioritySelector extends StatelessWidget {
  const PrioritySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localize.priority,
          style: context.theme.textTheme.titleSmall,
        ),
        const VerticalSpace(5),
        Container(
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: context.theme.colorScheme.outline,
              width: 1.2,
            ),
          ),
          child: BlocSelector<ManageTaskCubit, ManageTaskState, TaskPriority>(
            selector: (state) {
              return state.taskPriority;
            },
            builder: (context, selectedPriority) {
              var manageTaskCubit = context.read<ManageTaskCubit>();
              return Row(
                children: [
                  _buildOption(
                    priority: TaskPriority.low,
                    label: context.localize.lowPriority,
                    color: ColorsManager.freshGreen,
                    callBack: () {
                      manageTaskCubit.setPriority(TaskPriority.low);
                    },
                    selected: selectedPriority,
                    context: context,
                  ),
                  _buildVerticalDivider(),
                  _buildOption(
                    priority: TaskPriority.medium,
                    label: context.localize.meduimPriority,
                    color: ColorsManager.amberOrange,
                    callBack: () {
                      manageTaskCubit.setPriority(TaskPriority.medium);
                    },
                    selected: selectedPriority,
                    context: context,
                  ),
                  _buildVerticalDivider(),

                  _buildOption(
                    priority: TaskPriority.high,
                    label: context.localize.highPriority,
                    color: ColorsManager.softRed,
                    callBack: () {
                      manageTaskCubit.setPriority(TaskPriority.high);
                    },
                    selected: selectedPriority,
                    context: context,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildOption({
    required TaskPriority priority,
    required String label,
    required Color color,
    required VoidCallback callBack,
    required TaskPriority selected,
    required BuildContext context,
  }) {
    final bool isSelected = priority == selected;
    return Expanded(
      child: GestureDetector(
        onTap: callBack,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: isSelected ? color.withAlpha(30) : Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSelected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off_outlined,
                color: color,
                size: 20,
              ),
              const HorizontalSpace(6),
              Text(
                label,
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildVerticalDivider() {
  return VerticalDivider(
    indent: 7,
    endIndent: 7,
    color: ColorsManager.lightGrey,
  );
}
