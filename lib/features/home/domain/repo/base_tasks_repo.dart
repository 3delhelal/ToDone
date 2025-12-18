import '../entities/task.dart';

abstract class BaseTaksRepository {
  Future<void> addTask(Task task);
  Future<void> editTask(Task newTask);
  Future<void> deleteTask(String id);
  Future<List<Task>> getTasks();
}
