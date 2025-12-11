import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/core/widgets/spacing.dart';
import '../../../../controller/pomodoro_cubit.dart';

class ActiveTimerButtons extends StatelessWidget {
  final bool isSession;
  const ActiveTimerButtons({super.key, required this.isSession});

  @override
  Widget build(BuildContext context) {
    final PomodoroCubit pomodoroCubit = context.read<PomodoroCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          if (isSession)
            FilledButton(
              onPressed: () {
                pomodoroCubit.endCurrentSession();
              },
              child: Text(context.localize.endSession),
            )
          else
            FilledButton(
              onPressed: () {
                pomodoroCubit.endCurrentSession();
              },
              child: Text(context.localize.endBreak),
            ),
          const VerticalSpace(12),
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
}
