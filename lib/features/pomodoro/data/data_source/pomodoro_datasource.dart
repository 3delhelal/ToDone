import 'package:shared_preferences/shared_preferences.dart';
import '/core/constants/app_constants.dart';
import 'base_pomodoro_datasource.dart';

class PomodoroDataSource implements BasePomodoroDataSource {
  final SharedPreferences sharedPreferences;
  PomodoroDataSource(this.sharedPreferences);

  @override
  int getSessionSecondsDuration() {
    return sharedPreferences.getInt(AppConstants.sessionSecondsDurationKey) ??
        AppConstants.sessionSecondsDuration;
  }

  @override
  void setSessionSecondsDuration(int sessionSeconds) {
    sharedPreferences.setInt(
      AppConstants.sessionSecondsDurationKey,
      sessionSeconds,
    );
  }

  @override
  int getBreakSecondsDuration() {
    return sharedPreferences.getInt(AppConstants.breakSecondsDurationKey) ??
        AppConstants.breakSecondsDuration;
  }

  @override
  void setBreakSecondsDuration(int breakSeconds) {
    sharedPreferences.setInt(
      AppConstants.breakSecondsDurationKey,
      breakSeconds,
    );
  }
}
