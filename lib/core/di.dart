import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import '/core/networking/tasks_database/base_tasks_db.dart';
import '/core/networking/tasks_database/hive_tasks_database.dart';
import '/features/home/data/repo/tasks_repo.dart';
import '/features/home/domain/repo/base_tasks_repo.dart';
import '/features/home/presentation/controller/tasks_cubit.dart';

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
}
