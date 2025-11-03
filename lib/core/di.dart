import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import '/core/networking/tasks_database/base_tasks_db.dart';
import '/core/networking/tasks_database/hive_tasks_database.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  // Databases
  // - Hive Database
  var box = await Hive.openBox<Map<String, dynamic>>('tasksBox');
  getIt.registerLazySingleton<BaseTasksDatabase>(() => HiveTasksDatabase(box));
}
