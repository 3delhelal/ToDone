abstract class BaseTasksDatabase {
  Future<void> addTask(Map<String, dynamic> todoMap);
  Future<void> editTask(Map<String, dynamic> newTask);
  Future<void> deleteTask(String id);
  Future<List<Map<String, dynamic>>> getTasks();
}
