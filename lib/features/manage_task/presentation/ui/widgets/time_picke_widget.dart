// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todone/core/constants/app_constants.dart';
import '/core/resources/assets_manager.dart';
import '/core/widgets/svg_icon_button.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/helpers/extensions/generic_extensions.dart';
import '/core/widgets/spacing.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';

class TimeSelector extends StatelessWidget {
  const TimeSelector({super.key});

  Future<void> _pickDateTime(BuildContext context) async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: now,

      firstDate: now,
      lastDate: DateTime(AppConstants.datePickerEndDate),
    );
    if (date == null) return;
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(now),
    );
    if (time != null) {
      context.read<ManageTaskCubit>().setPickedDateTime(
        DateTime(date.year, date.month, date.day, time.hour, time.minute),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.localize.time, style: context.theme.textTheme.titleMedium),
        const VerticalSpace(8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: context.theme.colorScheme.outline),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => _pickDateTime(context),
                  child: Row(
                    children: [
                      BlocSelector<ManageTaskCubit, ManageTaskState, DateTime>(
                        selector: (state) {
                          return state.pickedDateTime;
                        },
                        builder: (context, taksDatetime) {
                          return Text(
                            taksDatetime.toStringDate(context),
                            style: context.theme.textTheme.bodySmall,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SVGIconButton(
                svgPath: AssetsManager.calendarIcon,
                callBack: () => _pickDateTime(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
