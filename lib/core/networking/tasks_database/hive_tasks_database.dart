import 'package:hive/hive.dart';
import 'base_tasks_db.dart';

class HiveTasksDatabase implements BaseTasksDatabase {
  final Box box;
  const HiveTasksDatabase(this.box);
  @override
  Future<void> addTask(Map<String, dynamic> task) async {
    await box.put(task['id'], task);
  }

  @override
  Future<List<Map<String, dynamic>>> getTasks() async {
    return box.values.map((map) => Map<String, dynamic>.from(map)).toList();
  }

  @override
  Future<void> deleteTask(String id) async {
    box.delete(id);
  }

  @override
  Future<void> editTask(Map<String, dynamic> newTask) async {
    final result = box.get(newTask['id']);
    if (result != null) {
      await box.put(newTask['id'], newTask);
    }
  }
}
