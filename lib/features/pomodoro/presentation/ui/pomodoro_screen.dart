import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/helpers/app_enums.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '/features/pomodoro/presentation/ui/components/active_body/active_timer_body.dart';
import '/features/pomodoro/presentation/ui/components/standby_body/standby_body.dart';
import '../controller/pomodoro_cubit.dart';
import 'components/completed_cycle_body/completed_cycle_body.dart';
import 'components/finished_session_body/session_finished_body.dart';

class PomoDoroScreen extends StatefulWidget {
  const PomoDoroScreen({super.key});

  @override
  State<PomoDoroScreen> createState() => _PomoDoroScreenState();
}

class _PomoDoroScreenState extends State<PomoDoroScreen>
    with TickerProviderStateMixin {
  late AnimationController _pulseController;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
      lowerBound: 0.0,
      upperBound: 0.06,
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localize.pomodoroTitle)),
      body: BlocListener<PomodoroCubit, PomodoroState>(
        listenWhen: (previous, current) {
          return previous.runtimeType != current.runtimeType;
        },
        listener: (context, state) {
          if (state is RunningPomodoroState) {
            _pulseController.repeat(reverse: true);
          } else if (state is PausedPomodoroState) {
            _pulseController.stop();
          } else {
            _pulseController.reset();
          }
        },
        child: BlocBuilder<PomodoroCubit, PomodoroState>(
          builder: (context, state) {
            if (state is RunningPomodoroState) {
              return ActiveTimerBody(
                controller: _pulseController,
                isSession: state.type == PomodoroType.session,
                isRunning: true,
                remainingSeconds: state.remainingSeconds,
                totalSeconds: state.seconds,
                taskName: state.taskName,
              );
            } else if (state is PausedPomodoroState) {
              return ActiveTimerBody(
                controller: _pulseController,
                isSession: state.type == PomodoroType.session,
                isRunning: false,
                remainingSeconds: state.remainingSeconds,
                totalSeconds: state.seconds,
                taskName: state.taskName,
              );
            } else if (state is FinishedPomodoroState) {
              if (state.type == PomodoroType.session) {
                return FinishedSessionBody();
              } else {
                return CycleCompletedBody();
              }
            } else {
              return const StandbyBody();
            }
          },
        ),
      ),
    );
  }
}
