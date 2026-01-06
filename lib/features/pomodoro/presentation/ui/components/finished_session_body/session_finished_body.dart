import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/widgets/responsive_builder.dart';
import '/core/constants/app_constants.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';
import '/features/pomodoro/presentation/ui/components/common/header_container.dart';
import '../../../controller/pomodoro_cubit.dart';
import '../common/circle_minutes_picker.dart';

class FinishedSessionBody extends StatelessWidget {
  const FinishedSessionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final PomodoroCubit pomodoroCubit = context.read<PomodoroCubit>();
    final size = MediaQuery.of(context).size;
    final minSide = size.width < size.height ? size.width : size.height;
    final ringSizeMobile = (minSide * AppConstants.pomodoroRingSizeRatioMobile);
    final ringSizeTablet = (minSide * AppConstants.pomodoroRingSizeRatioTablet);
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(context, ringSizeMobile, pomodoroCubit),
      tablet: _buildTabletLayout(context, ringSizeTablet, pomodoroCubit),
    );
  }
}

Widget _buildMobileLayout(
  BuildContext context,
  double ringSize,
  PomodoroCubit pomodoroCubit,
) {
  return SingleChildScrollView(
    padding: EdgeInsets.all(5),
    physics: BouncingScrollPhysics(),
    child: Column(
      children: [
        HeaderContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.localize.sessionComplete,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.titleLarge,
              ),
              const VerticalSpace(10),
              Text(
                context.localize.breakTimeMsg,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
        CircleMinutesPicker(
          ringSize: ringSize,
          lable: context.localize.minute,
          initialIndex: (context.read<PomodoroCubit>().breakMinutes - 5) ~/ 5,
          minValue: AppConstants.breakMinutePickerMinValue,
          maxValue: AppConstants.breakMinutePickerMaxValue,
          itemCount: AppConstants.breakMinutePickerItemCount,
          onChange: (value) => pomodoroCubit.setBreakkMinutes(value),
        ),
        const VerticalSpace(40),
        FilledButton(
          onPressed: () {
            pomodoroCubit.startBreak();
          },
          child: Text(context.localize.startBreak),
        ),
        const VerticalSpace(10),
        OutlinedButton(
          onPressed: () {
            pomodoroCubit.cancelPomodoro();
          },
          child: Text(context.localize.cancel),
        ),
      ],
    ),
  );
}

Widget _buildTabletLayout(
  BuildContext context,
  double ringSize,
  PomodoroCubit pomodoroCubit,
) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeaderContainer(
          isTabletLayout: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                context.localize.sessionComplete,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.titleMedium,
              ),

              const VerticalSpace(3),
              Text(
                context.localize.breakTimeMsg,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.labelMedium,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                children: [
                  VerticalSpace(10),
                  CircleMinutesPicker(
                    ringSize: ringSize,
                    lable: context.localize.minute,
                    initialIndex:
                        (context.read<PomodoroCubit>().breakMinutes - 5) ~/ 5,
                    minValue: AppConstants.sessionMinutePickerMinValue,
                    maxValue: AppConstants.sessionMinutePickerMaxValue,
                    itemCount: AppConstants.sessionMinutePickerItemCount,
                    onChange: (value) => pomodoroCubit.setBreakkMinutes(value),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FilledButton(
                    onPressed: () {
                      pomodoroCubit.startBreak();
                    },
                    child: Text(context.localize.startBreak),
                  ),
                  const VerticalSpace(10),
                  OutlinedButton(
                    onPressed: () {
                      pomodoroCubit.cancelPomodoro();
                    },
                    child: Text(context.localize.cancel),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
