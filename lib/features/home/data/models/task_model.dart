import '../../../../core/helpers/app_enums.dart';
import '../../domain/entities/task.dart';

class TaskModel extends Task {
  TaskModel({
    required super.id,
    required super.title,
    super.note,
    super.done = false,
    required super.time,
    super.priority = TaskPriority.low,
  });

  factory TaskModel.fromJson(Map<String, dynamic> jsonMap) {
    return TaskModel(
      id: jsonMap['id'] as String,
      title: jsonMap['title'] as String,
      note: jsonMap['note'] as String?,
      done: jsonMap['done'] as bool? ?? false,
      time: DateTime.parse(jsonMap['time'] as String),
      priority: TaskPriority.values.firstWhere(
        (priorityEnum) => priorityEnum.name == jsonMap['priority'],
        orElse: () => TaskPriority.low,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'note': note,
      'done': done,
      'time': time.toIso8601String(),
      'priority': priority.name,
    };
  }

  factory TaskModel.fromEntity(Task task) {
    return TaskModel(
      id: task.id,
      title: task.title,
      note: task.note,
      done: task.done,
      time: task.time,
      priority: task.priority,
    );
  }
  Task toEntity() {
    return Task(
      id: id,
      title: title,
      note: note,
      done: done,
      time: time,
      priority: priority,
    );
  }
}
