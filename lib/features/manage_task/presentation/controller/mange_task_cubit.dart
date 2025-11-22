import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/core/constants/random_generator.dart';
import '/core/helpers/app_enums.dart';
import '/features/home/presentation/controller/tasks_cubit.dart';
import '/features/home/domain/entities/task.dart';
part 'manage_task_state.dart';

class ManageTaskCubit extends Cubit<ManageTaskState> {
  final TasksCubit tasksCubit;
  ManageTaskCubit(this.tasksCubit)
    : super(
        ManageTaskState(
          pickedDateTime: DateTime.now(),
          screenType: MangeTaskScreenType.add,
        ),
      );
  String taskId = '';
  String taskTitle = '';
  String? taskNote;

  void initScreen(Task? task) {
    if (task != null) {
      taskId = task.id;
      taskTitle = task.title;
      taskNote = task.note;
      emit(
        state.copyWith(
          newScreenType: MangeTaskScreenType.edit,
          newDateTime: task.time,
          newTaskPriority: task.priority,
        ),
      );
    } else {
      taskId = '';
      taskTitle = '';
      taskNote = null;
      emit(
        state.copyWith(
          newScreenType: MangeTaskScreenType.add,
          newTaskPriority: TaskPriority.low,
        ),
      );
    }
  }

  void setTitle(String newTitle) {
    taskTitle = newTitle;
  }

  void setNote(String newNote) {
    if (newNote.isEmpty) {
      taskNote = null;
    } else {
      taskNote = newNote;
    }
  }

  void setPriority(TaskPriority newPriority) {
    if (state.taskPriority != newPriority) {
      emit(state.copyWith(newTaskPriority: newPriority));
    }
  }

  void setPickedDateTime(DateTime dateTime) {
    emit(state.copyWith(newDateTime: dateTime));
  }

  void saveTask(BuildContext coontext) {
    if (state.screenType == MangeTaskScreenType.add) {
      tasksCubit.addTask(
        Task(
          id: RandomGenerator.generateID(),
          title: taskTitle,

          time: state.pickedDateTime,
          priority: state.taskPriority,
          note: taskNote,
        ),
      );
    } else {
      tasksCubit.editTask(
        Task(
          id: taskId,
          title: taskTitle,
          time: state.pickedDateTime,
          priority: state.taskPriority,
          note: taskNote,
        ),
      );
    }
  }
}
