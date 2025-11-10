import 'package:flutter_bloc/flutter_bloc.dart';
import '/features/home/domain/repo/base_tasks_repo.dart';
import '../../domain/entities/task.dart';
part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  BaseTaksRepository homeRepository;
  TasksCubit(this.homeRepository)
    : super(TasksState(status: TasksStateStatus.loading)) {
    loadTasks();
  }

  void loadTasks() async {
    try {
      emit(TasksState(status: TasksStateStatus.loading));
      final tasks = await homeRepository.getTasks();
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
        tasks: state.tasks..add(task),
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
