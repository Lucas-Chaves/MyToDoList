// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return TaskModel(
    taskId: json['taskId'] as int?,
    taskTitle: json['taskTitle'] as String,
    taskDescription: json['taskDescription'] as String,
    taskDone: json['taskDone'] as int,
    taskCreatedAt: json['taskCreatedAt'] as String?,
    taskUpdatedAt: json['taskUpdatedAt'] as String?,
  );
}

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'taskId': instance.taskId,
      'taskTitle': instance.taskTitle,
      'taskDescription': instance.taskDescription,
      'taskDone': instance.taskDone,
      'taskCreatedAt': instance.taskCreatedAt,
      'taskUpdatedAt': instance.taskUpdatedAt,
    };
