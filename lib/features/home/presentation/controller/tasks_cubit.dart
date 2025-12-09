import 'package:flutter_bloc/flutter_bloc.dart';
import '/features/sound/domain/repositories/base_sound_repository.dart';
import '/core/helpers/app_enums.dart';
import '/core/di.dart';
import '/core/constants/app_constants.dart';
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
    emit(
      TasksState(
        status: TasksStateStatus.loaded,
        tasks: state.tasks..insert(0, task),
      ),
    );
    await homeRepository.addTask(task);
  }

  void editTask(Task newTask) async {
    final updatedTasks = state.tasks.map((task) {
      if (task.id == newTask.id) {
        return newTask;
      }
      return task;
    }).toList();
    emit(TasksState(status: TasksStateStatus.loaded, tasks: updatedTasks));
    await homeRepository.editTask(newTask);
  }

  void toggleDone(Task newTask, {bool isLast = false}) async {
    if (newTask.done) {
      getIt<BaseSoundRepository>().playTaskSound(
        soundType: SoundType.taskComplete,
      );
    } else {
      getIt<BaseSoundRepository>().playTaskSound(
        soundType: SoundType.taskUndone,
      );
    }
    final updatedTasks = state.tasks.map((task) {
      if (task.id == newTask.id) {
        return newTask;
      }
      return task;
    }).toList();
    if (!isLast) {
      // Check if the item is the last in the list.
      emit(TasksState(status: TasksStateStatus.loaded, tasks: updatedTasks));
    } else {
      // To wait removing animation first before emit the new state.
      Future.delayed(AppConstants.animationDuration, () {
        emit(TasksState(status: TasksStateStatus.loaded, tasks: updatedTasks));
      });
    }
    await homeRepository.editTask(newTask);
  }

  void deleteTask(String id, {bool isLast = false}) async {
    getIt<BaseSoundRepository>().playTaskSound(soundType: SoundType.taskDelete);

    final updatedTasks = state.tasks.where((task) => task.id != id).toList();
    if (!isLast) {
      // Check if the item is the last in the list.
      emit(TasksState(status: TasksStateStatus.loaded, tasks: updatedTasks));
    } else {
      // To wait removing animation first before emit the new state.
      Future.delayed(AppConstants.animationDuration, () {
        emit(TasksState(status: TasksStateStatus.loaded, tasks: updatedTasks));
      });
    }
    await homeRepository.deleteTask(id);
  }
}
