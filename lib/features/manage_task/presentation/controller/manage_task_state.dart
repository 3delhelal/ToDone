part of 'mange_task_cubit.dart';

class ManageTaskState {
  final TaskPriority taskPriority;

  final DateTime pickedDateTime;
  final MangeTaskScreenType screenType;
  const ManageTaskState({
    this.taskPriority = TaskPriority.low,

    required this.pickedDateTime,
    required this.screenType,
  });
  ManageTaskState copyWith({
    TaskPriority? newTaskPriority,

    DateTime? newDateTime,
    final MangeTaskScreenType? newScreenType,
  }) {
    return ManageTaskState(
      taskPriority: newTaskPriority ?? taskPriority,
      pickedDateTime: newDateTime ?? pickedDateTime,
      screenType: newScreenType ?? screenType,
    );
  }
}
