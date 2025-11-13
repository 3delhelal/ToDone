import 'package:flutter_bloc/flutter_bloc.dart';
import '/features/home/presentation/controller/dummy_data.dart';
import '/features/home/domain/repo/base_tasks_repo.dart';
import '/features/home/domain/entities/task.dart';
part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  BaseTaksRepository homeRepository;
  TasksCubit(this.homeRepository)
    : super(TasksState(status: TasksStateStatus.loading)) {
    loadDummy();
    // loadTasks();
  }
  void loadDummy() async {
    emit(TasksState(status: TasksStateStatus.loaded, tasks: enTasks));
  }

  void loadTasks() async {
    try {
      emit(TasksState(status: TasksStateStatus.loading));
      var tasks = await homeRepository.getTasks();
      tasks = tasks.reversed
          .toList(); // Reverse the tasks ​​to become descending according to the addition.
      emit(TasksState(status: TasksStateStatus.loaded, tasks: tasks));
    } catch (e) {
      emit(
        TasksState(errorMessage: e.toString(), status: TasksStateStatus.error),
      );
      rethrow;
    }
  }

  void addTask(Task task) async {
    await homeRepository.addTask(task);
    emit(
      TasksState(
        status: TasksStateStatus.loaded,
        tasks: state.tasks..insert(0, task),
      ),
    );
  }

  void editTask(Task newTask) async {
    await homeRepository.editTask(newTask);
    final updatedTasks = state.tasks.map((task) {
      if (task.id == newTask.id) {
        return newTask;
      }
      return task;
    }).toList();
    emit(TasksState(status: TasksStateStatus.loaded, tasks: updatedTasks));
  }

  void deleteTask(String id) async {
    await homeRepository.deleteTask(id);
    final updatedTasks = state.tasks.where((task) => task.id != id).toList();
    emit(TasksState(status: TasksStateStatus.loaded, tasks: updatedTasks));
  }
}
