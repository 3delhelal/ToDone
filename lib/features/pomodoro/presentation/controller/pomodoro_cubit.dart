import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/di.dart';
import '../../../sound/domain/repositories/base_sound_repository.dart';
import '/core/helpers/app_enums.dart';
import '/core/constants/app_constants.dart';
import '/features/pomodoro/domain/repo/base_pomodoro_repo.dart';

part 'pomodoro_state.dart';

class PomodoroCubit extends Cubit<PomodoroState> {
  final BasePomodoroRepo pomodoroRepo;
  PomodoroCubit(this.pomodoroRepo)
    : super(
        StandByPomodoroState(
          breakDuration: AppConstants.breakSecondsDuration,
          sessionDuration: AppConstants.sessionSecondsDuration,
        ),
      ) {
    _init();
  }
  Timer? _uiTimer;
  DateTime? _startTime;
  DateTime? _endTime;
  int _sessionDuration = AppConstants.sessionSecondsDuration;
  int _breakDuration = AppConstants.breakSecondsDuration;

  PomodoroType _currentPomodoroType = PomodoroType.session;
  String? choosenTask;

  void _init() {
    _sessionDuration = pomodoroRepo.getSessionSecondsDuration();
    _breakDuration = pomodoroRepo.getBreakSecondsDuration();
  }

  int get _currentDuration => _currentPomodoroType == PomodoroType.session
      ? _sessionDuration
      : _breakDuration;
  int get sessionMinutes => _sessionDuration ~/ 60;
  int get breakMinutes => _breakDuration ~/ 60;

  void setSessionMinutes(int minutes) {
    _sessionDuration = minutes * 60;
    pomodoroRepo.setSessionSecondsDuration(_sessionDuration);
  }

  void setBreakkMinutes(int minutes) {
    _breakDuration = minutes * 60;
    pomodoroRepo.setBreakSecondsDuration(_breakDuration);
  }

  Future<void> startSession({String? taskName}) async {
    if (_uiTimer?.isActive ?? false) return;
    choosenTask = taskName;
    _currentPomodoroType = PomodoroType.session;
    _startTime = DateTime.now();
    _endTime = _startTime!.add(Duration(seconds: _sessionDuration));

    emit(
      RunningPomodoroState(
        type: _currentPomodoroType,
        seconds: _sessionDuration,
        remainingSeconds: _sessionDuration,
        taskName: choosenTask,
      ),
    );
    _startUiTimer();
  }

  Future<void> startBreak() async {
    _stopUiTimer();
    _currentPomodoroType = PomodoroType.breaking;
    _startTime = DateTime.now();
    _endTime = _startTime!.add(Duration(seconds: _breakDuration));
    emit(
      RunningPomodoroState(
        type: _currentPomodoroType,
        seconds: _breakDuration,
        remainingSeconds: _breakDuration,
        taskName: choosenTask,
      ),
    );
    _startUiTimer();
  }

  void pause() {
    if (_endTime == null) return;
    final remaining = _endTime!
        .difference(DateTime.now())
        .inSeconds
        .clamp(0, _currentDuration);
    _stopUiTimer();
    emit(
      PausedPomodoroState(
        type: _currentPomodoroType,
        seconds: _currentDuration,
        remainingSeconds: remaining,
        taskName: choosenTask,
      ),
    );
  }

  Future<void> resume() async {
    if (state is! PausedPomodoroState) return;
    final pausedState = state as PausedPomodoroState;
    _startTime = DateTime.now();
    _endTime = _startTime!.add(
      Duration(seconds: pausedState.remainingSeconds + 1),
    );
    emit(
      RunningPomodoroState(
        type: _currentPomodoroType,
        seconds: _currentDuration,
        remainingSeconds: pausedState.remainingSeconds,
        taskName: choosenTask,
      ),
    );

    _startUiTimer();
  }

  Future<void> cancelPomodoro() async {
    _stopUiTimer();
    _startTime = null;
    _endTime = null;

    emit(StandByPomodoroState());
  }

  Future<void> endCurrentSession() async {
    await _onTimerComplete();
  }

  // ===== Private Logic =====
  void _startUiTimer() {
    _uiTimer?.cancel();
    _uiTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_endTime == null) return;
      final remaining = _endTime!.difference(DateTime.now()).inSeconds;
      if (remaining > 0) {
        emit(
          RunningPomodoroState(
            type: _currentPomodoroType,
            seconds: _currentDuration,
            remainingSeconds: remaining,
            taskName: choosenTask,
          ),
        );
      } else {
        _onTimerComplete();
      }
    });
  }

  void _stopUiTimer() {
    _uiTimer?.cancel();
    _uiTimer = null;
  }

  Future<void> _onTimerComplete() async {
    _stopUiTimer();
    if (_currentPomodoroType == PomodoroType.session) {
      getIt<BaseSoundRepository>().playTaskSound(
        soundType: SoundType.sessionFinished,
      );
    } else {
      getIt<BaseSoundRepository>().playTaskSound(
        soundType: SoundType.breakFinished,
      );
    }
    emit(FinishedPomodoroState(type: _currentPomodoroType));
  }
}
