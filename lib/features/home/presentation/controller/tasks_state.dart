part of 'tasks_cubit.dart';

enum TasksStateStatus { loading, loaded, error }

class TasksState {
  final TasksStateStatus status;
  final String errorMessage;
  final List<Task> tasks;
  final bool addingActionEvent;
  const TasksState({
    required this.status,
    this.errorMessage = '',
    this.tasks = const [],
    // for updating the animated list for each add
    this.addingActionEvent = false,
  });

  List<Task> get unDoneTasks =>
      tasks.where((singleTask) => !singleTask.done).toList();
  List<Task> get doneTasks =>
      tasks.where((singleTask) => singleTask.done).toList();
}
