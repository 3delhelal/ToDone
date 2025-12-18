import '/core/helpers/app_enums.dart';

class Task {
  final String id;
  final String title;
  final String? note;
  final bool done;
  final DateTime time;
  final TaskPriority priority;

  Task({
    required this.id,
    required this.title,
    this.note,
    this.done = false,
    required this.time,
    this.priority = TaskPriority.low,
  });
  Task copyWith({
    String? id,
    String? title,
    String? note,
    bool? done,
    DateTime? time,
    TaskPriority? priority,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      note: note ?? this.note,
      done: done ?? this.done,
      time: time ?? this.time,
      priority: priority ?? this.priority,
    );
  }
}
