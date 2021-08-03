import 'package:equatable/equatable.dart';
import '../../../utils/utils.dart';

enum TaskStatus {
  initial,
  loading,
  success,
  failure,
  nextPage,
}

class TaskState extends Equatable {
  final TaskStatus status;
  final List<TaskModel> allTasks;

  const TaskState({this.status = TaskStatus.initial, this.allTasks = const []});

  @override
  List<Object?> get props => [status, allTasks];

  @override
  bool get stringify => true;

  TaskState copyWith({TaskStatus? status, List<TaskModel>? allTasks}) {
    return TaskState(
      status: status ?? this.status,
      allTasks: allTasks ?? this.allTasks,
    );
  }
}
