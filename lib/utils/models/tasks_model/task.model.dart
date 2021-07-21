import 'package:json_annotation/json_annotation.dart';

part 'task.model.g.dart';



@JsonSerializable()
class TaskModel {
  final int? taskId;
  final String taskTitle;
  final String taskDescription;
  final int taskDone;
  final String? taskCreatedAt;
  final String? taskUpdatedAt;

  TaskModel({
    this.taskId,
    required this.taskTitle,
    required this.taskDescription,
    required this.taskDone,
    this.taskCreatedAt,
    this.taskUpdatedAt,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
