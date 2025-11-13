import '/core/networking/tasks_database/base_tasks_db.dart';
import '../../domain/entities/task.dart';
import '../../domain/repo/base_tasks_repo.dart';
import '../models/task_model.dart';

class TasksRepository implements BaseTaksRepository {
  final BaseTasksDatabase appDatabase;
  TasksRepository(this.appDatabase);
  @override
  Future<void> addTask(Task task) async {
    await appDatabase.addTask(TaskModel.fromEntity(task).toJson());
  }

  @override
  Future<void> editTask(Task newTask) async {
    await appDatabase.addTask(TaskModel.fromEntity(newTask).toJson());
  }

  @override
  Future<void> deleteTask(String id) async {
    await appDatabase.deleteTask(id);
  }

  @override
  Future<List<Task>> getTasks() async {
    var tasksMapList = await appDatabase.getTasks();
    return tasksMapList
        .map((jsonTask) => TaskModel.fromJson(jsonTask).toEntity())
        .toList();
  }
}
