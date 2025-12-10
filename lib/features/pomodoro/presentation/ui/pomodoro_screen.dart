import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/helpers/app_enums.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/features/pomodoro/presentation/ui/components/standby_body/standby_body.dart';
import '../controller/pomodoro_cubit.dart';

class PomoDoroScreen extends StatelessWidget {
  const PomoDoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localize.pomodoroTitle)),
      body: BlocBuilder<PomodoroCubit, PomodoroState>(
        builder: (context, state) {
          if (state is RunningPomodoroState) {
            // TODO: Implement running state
            throw UnimplementedError();
          } else if (state is PausedPomodoroState) {
            // TODO: Implement paused state

            throw UnimplementedError();
          } else if (state is FinishedPomodoroState) {
            // TODO: Implement finished state

            if (state.type == PomodoroType.session) {
              throw UnimplementedError();
            } else {
              throw UnimplementedError();
            }
          } else {
            return const StandbyBody();
          }
        },
      ),
    );
  }
}
