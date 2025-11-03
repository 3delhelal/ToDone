import 'package:hive/hive.dart';
import 'base_tasks_db.dart';

class HiveTasksDatabase implements BaseTasksDatabase {
  final Box<Map<String, dynamic>> box;
  const HiveTasksDatabase(this.box);
  @override
  Future<void> addTask(Map<String, dynamic> task) async {
    await box.put(task['id'], task);
  }

  @override
  Future<List<Map<String, dynamic>>> getTasks() async {
    return box.values.toList();
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
