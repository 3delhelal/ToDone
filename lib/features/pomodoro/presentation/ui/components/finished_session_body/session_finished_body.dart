import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final size = MediaQuery.of(context).size;
    // make ring size responsive but never larger than available width and never zero
    final ringSize = (size.width * 0.65).clamp(120.0, size.width - 48.0);

    return Center(
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
            onChange: (value) =>
                context.read<PomodoroCubit>().setBreakkMinutes(value),
          ),

          const VerticalSpace(40),

          FilledButton(
            onPressed: () {
              context.read<PomodoroCubit>().startBreak();
            },
            child: Text(context.localize.startBreak),
          ),
          const VerticalSpace(10),
          OutlinedButton(
            onPressed: () {
              context.read<PomodoroCubit>().cancelPomodoro();
            },
            child: Text(context.localize.cancel),
          ),
        ],
      ),
    );
  }
}
