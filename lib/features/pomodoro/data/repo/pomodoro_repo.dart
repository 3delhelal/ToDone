import '../../domain/repo/base_pomodoro_repo.dart';
import '../data_source/base_pomodoro_datasource.dart';

class PomodoroRepo implements BasePomodoroRepo {
  final BasePomodoroDataSource pomodoroDataSource;
  PomodoroRepo(this.pomodoroDataSource);

  @override
  int getBreakSecondsDuration() {
    return pomodoroDataSource.getBreakSecondsDuration();
  }

  @override
  int getSessionSecondsDuration() {
    return pomodoroDataSource.getSessionSecondsDuration();
  }

  @override
  void setBreakSecondsDuration(int breakSeconds) {
    return pomodoroDataSource.setBreakSecondsDuration(breakSeconds);
  }

  @override
  void setSessionSecondsDuration(int sessionSeconds) {
    return pomodoroDataSource.setSessionSecondsDuration(sessionSeconds);
  }
}
