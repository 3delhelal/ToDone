import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/di.dart';
import '../../../sound/domain/repositories/base_sound_repository.dart';
import '/core/helpers/app_enums.dart';
import '/core/constants/app_constants.dart';
import '/features/pomodoro/domain/repo/base_pomodoro_repo.dart';

part 'pomodoro_state.dart';

class PomodoroCubit extends Cubit<PomodoroState> {
  BasePomodoroRepo pomodoroRepo;
  PomodoroCubit(this.pomodoroRepo)
    : super(
        StandByPomodoroState(
          breakDuration: AppConstants.breakSecondsDuration,
          sessionDuration: AppConstants.sessionSecondsDuration,
        ),
      ) {
    _init();
  }

  Timer? _timer;
  int _sessionDuration = AppConstants.sessionSecondsDuration; // 20 mins default
  int _breakDuration = AppConstants.breakSecondsDuration; // 5 mins default
  int _remainingSeconds = 0;
  PomodoroType _currentPomodorotype = PomodoroType.session;
  void _init() {
    _sessionDuration = pomodoroRepo.getSessionSecondsDuration();
    _breakDuration = pomodoroRepo.getBreakSecondsDuration();
  }

  int get _currentDuration => _currentPomodorotype == PomodoroType.session
      ? _sessionDuration
      : _breakDuration;
  String? choosenTask;

  int get sessionMinutes => _sessionDuration ~/ 60;
  int get breakMinutes => _breakDuration ~/ 60;
  void setSessionMinutes(int munites) {
    _sessionDuration = munites * 60;
    pomodoroRepo.setSessionSecondsDuration(_sessionDuration);
  }

  void setBreakkMinutes(int munites) {
    _breakDuration = munites * 60;
    pomodoroRepo.setBreakSecondsDuration(_breakDuration);
  }

  Future<void> startSession({String? taskName}) async {
    if (_timer != null && _timer!.isActive) return;
    choosenTask = taskName;
    _currentPomodorotype = PomodoroType.session;
    _remainingSeconds = _sessionDuration;
    emit(
      RunningPomodoroState(
        type: _currentPomodorotype,
        seconds: _sessionDuration,
        remainingSeconds: _remainingSeconds,
        taskName: choosenTask,
      ),
    );
    await _startTimer();
  }

  Future<void> startBreak() async {
    if (_timer != null && _timer!.isActive) {
      _stopTimer();
    }
    _currentPomodorotype = PomodoroType.breaking;

    _remainingSeconds = _breakDuration;
    emit(
      RunningPomodoroState(
        type: _currentPomodorotype,
        seconds: _breakDuration,
        remainingSeconds: _remainingSeconds,
        taskName: choosenTask,
      ),
    );
    await _startTimer();
  }

  void pause() {
    if (!(_timer != null && _timer!.isActive)) return;

    emit(
      PausedPomodoroState(
        type: _currentPomodorotype,
        seconds: _currentDuration,
        remainingSeconds: _remainingSeconds,
        taskName: choosenTask,
      ),
    );

    _stopTimer();
  }

  Future<void> resume() async {
    emit(
      RunningPomodoroState(
        type: _currentPomodorotype,
        seconds: _currentDuration,
        remainingSeconds: _remainingSeconds,
        taskName: choosenTask,
      ),
    );

    await _startTimer();
  }

  Future<void> endCurrentSession() async {
    _onTimerComplete();
  }

  Future<void> cancelPomodoro() async {
    _stopTimer();
    emit(StandByPomodoroState());
  }

  // Private Methods

  Future<void> _startTimer() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) async {
      if (_remainingSeconds > 0) {
        _remainingSeconds = _remainingSeconds - 1;
        emit(
          RunningPomodoroState(
            type: _currentPomodorotype,
            seconds: _currentDuration,
            remainingSeconds: _remainingSeconds,
            taskName: choosenTask,
          ),
        );
      } else {
        await _onTimerComplete();
      }
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _onTimerComplete() async {
    if (_currentPomodorotype == PomodoroType.session) {
      getIt<BaseSoundRepository>().playTaskSound(
        soundType: SoundType.sessionFinished,
      );
    } else {
      getIt<BaseSoundRepository>().playTaskSound(
        soundType: SoundType.breakFinished,
      );
    }
    _stopTimer();

    emit(FinishedPomodoroState(type: _currentPomodorotype));
  }
}
