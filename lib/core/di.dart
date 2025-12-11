import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/features/pomodoro/data/data_source/base_pomodoro_datasource.dart';
import '/features/pomodoro/data/data_source/pomodoro_datasource.dart';
import '/features/pomodoro/data/repo/pomodoro_repo.dart';
import '/features/pomodoro/domain/repo/base_pomodoro_repo.dart';
import '/features/pomodoro/presentation/controller/pomodoro_cubit.dart';
import '/features/sound/data/data_sources/tasks_sound_player.dart';
import '/features/sound/domain/repositories/base_sound_repository.dart';
import '/features/sound/data/data_sources/sound_player_interface.dart';
import '/features/sound/data/repositories/sound_repository.dart';
import '/features/theme/data/data_source/base_theme_data_source.dart';
import '/core/networking/tasks_database/base_tasks_db.dart';
import '/core/networking/tasks_database/hive_tasks_database.dart';
import '/features/home/data/repo/tasks_repo.dart';
import '/features/home/domain/repo/base_tasks_repo.dart';
import '/features/home/presentation/controller/tasks_cubit.dart';
import '/features/manage_task/presentation/controller/mange_task_cubit.dart';
import '/features/theme/domain/repo/base_theme_repo.dart';
import '/features/theme/presentation/controller/theme_cubit.dart';
import '/features/theme/data/data_source/theme_data_source.dart';
import '/features/theme/data/repo/theme_repository.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  // Databases
  // - Hive Database
  var box = await Hive.openBox('tasksBox');
  getIt.registerLazySingleton<BaseTasksDatabase>(() => HiveTasksDatabase(box));
  // Tasks Repository
  getIt.registerLazySingleton<BaseTaksRepository>(
    () => TasksRepository(getIt()),
  );
  // Tasks Cubit
  getIt.registerLazySingleton<TasksCubit>(() => TasksCubit(getIt()));

  // Manage Task Cubit
  getIt.registerLazySingleton<ManageTaskCubit>(() => ManageTaskCubit(getIt()));

  // Shared Preferences.
  var sharedPrefs = await SharedPreferences.getInstance();
  // Theme Dependencies
  getIt.registerSingleton<BaseThemeDataSource>(ThemeDataSource(sharedPrefs));
  getIt.registerSingleton<BaseThemeRepository>(ThemeRepository(getIt()));
  getIt.registerSingleton(ThemeCubit(getIt()));

  // Sound Feature
  getIt.registerLazySingleton<SoundPlayerDataSource>(() => AppSoundPlayer());
  // Initialize Sound Datasource
  await getIt<SoundPlayerDataSource>().initialize();
  getIt.registerLazySingleton<BaseSoundRepository>(
    () => SoundRepositoryImpl(soundPlayer: getIt()),
  );
  // Pomodoro
  getIt.registerLazySingleton<BasePomodoroDataSource>(
    () => PomodoroDataSource(sharedPrefs),
  );
  getIt.registerLazySingleton<BasePomodoroRepo>(() => PomodoroRepo(getIt()));
  getIt.registerLazySingleton<PomodoroCubit>(() => PomodoroCubit(getIt()));
}
