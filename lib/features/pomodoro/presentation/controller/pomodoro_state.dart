part of 'pomodoro_cubit.dart';

abstract class PomodoroState {}

class StandByPomodoroState extends PomodoroState {
  final int sessionDuration;
  final int breakDuration;
  StandByPomodoroState({
    this.sessionDuration = AppConstants.sessionSecondsDuration,
    this.breakDuration = AppConstants.breakSecondsDuration,
  });
}

class RunningPomodoroState extends PomodoroState {
  PomodoroType type;
  final int seconds;
  final int remainingSeconds;
  final String? taskName;

  RunningPomodoroState({
    required this.seconds,
    required this.remainingSeconds,
    required this.type,
    this.taskName,
  });
}

class PausedPomodoroState extends PomodoroState {
  PomodoroType type;
  final int seconds;
  final int remainingSeconds;
  final String? taskName;
  PausedPomodoroState({
    required this.seconds,
    required this.remainingSeconds,
    required this.type,
    this.taskName,
  });
}

class FinishedPomodoroState extends PomodoroState {
  PomodoroType type;

  FinishedPomodoroState({required this.type});
}
