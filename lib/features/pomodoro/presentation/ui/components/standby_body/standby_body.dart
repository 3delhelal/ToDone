import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/widgets/responsive_builder.dart';
import '/features/pomodoro/presentation/ui/components/standby_body/components/pomodoro_description.dart';
import '/core/constants/app_constants.dart';
import '/core/widgets/spacing.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/features/home/presentation/controller/tasks_cubit.dart';
import '/features/pomodoro/presentation/ui/components/common/circle_minutes_picker.dart';
import 'components/task_selection_sheet.dart';
import '../../../controller/pomodoro_cubit.dart';
import '../common/header_container.dart';

class StandbyBody extends StatelessWidget {
  const StandbyBody({super.key});

  @override
  Widget build(BuildContext context) {
    final PomodoroCubit pomodoroCubit = context.read<PomodoroCubit>();
    final size = MediaQuery.of(context).size;
    final minSide = size.width < size.height ? size.width : size.height;
    final ringSize = (minSide * AppConstants.pomodoroRingSizeRatio).clamp(
      120.0,
      size.width - 48.0,
    );
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(context, ringSize, pomodoroCubit),
      tablet: _buildTabletLayout(context, ringSize, pomodoroCubit),
    );
  }
}

Widget _buildMobileLayout(
  BuildContext context,
  double ringSize,
  PomodoroCubit pomodoroCubit,
) {
  return Center(
    child: Column(
      children: [
        HeaderContainer(
          child: Text(
            context.localize.chooseSessionTime,
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        CircleMinutesPicker(
          ringSize: ringSize,
          lable: context.localize.minute,
          initialIndex: (pomodoroCubit.sessionMinutes - 5) ~/ 5,
          minValue: AppConstants.sessionMinutePickerMinValue,
          maxValue: AppConstants.sessionMinutePickerMaxValue,
          itemCount: AppConstants.sessionMinutePickerItemCount,
          onChange: (value) => pomodoroCubit.setSessionMinutes(value),
        ),
        const VerticalSpace(40),
        FilledButton(
          onPressed: () {
            _startWorkSession(context);
          },
          child: Text(context.localize.startSession),
        ),
        const VerticalSpace(10),
        PomodoroDescription(),
      ],
    ),
  );
}

Widget _buildTabletLayout(
  BuildContext context,
  double ringSize,
  PomodoroCubit pomodoroCubit,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      HeaderContainer(
        isTabletLayout: true,
        child: Text(
          context.localize.chooseSessionTime,
          style: context.theme.textTheme.titleMedium,
        ),
      ),
      const VerticalSpace(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: CircleMinutesPicker(
              ringSize: ringSize,
              lable: context.localize.minute,
              initialIndex: (pomodoroCubit.sessionMinutes - 5) ~/ 5,
              minValue: AppConstants.sessionMinutePickerMinValue,
              maxValue: AppConstants.sessionMinutePickerMaxValue,
              itemCount: AppConstants.sessionMinutePickerItemCount,
              onChange: (value) => pomodoroCubit.setSessionMinutes(value),
            ),
          ),
          HorizontalSpace(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FilledButton(
                  onPressed: () {
                    _startWorkSession(context);
                  },
                  child: Text(context.localize.startSession),
                ),
                const VerticalSpace(15),
                PomodoroDescription(),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

void _startWorkSession(BuildContext context) {
  final PomodoroCubit pomodoroCubit = context.read<PomodoroCubit>();

  final tasksList = context.read<TasksCubit>().state.unDoneTasks;

  if (tasksList.isEmpty) {
    context.read<PomodoroCubit>().startSession();
    return;
  }

  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => TaskSelectionSheet(
      tasks: tasksList,
      onTaskSelected: (taskName) {
        pomodoroCubit.startSession(taskName: taskName);
        context.pop(context);
      },
      onStartWithoutTask: () {
        pomodoroCubit.startSession();
        context.pop(context);
      },
    ),
  );
}
