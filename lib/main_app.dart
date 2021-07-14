import 'package:flutter/material.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do/theme/theme_dark.dart';
import 'package:to_do/ui/home/home.dart';
import 'package:to_do/ui/models/models.dart';

import 'repository/repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      home: HomePage(),
    );
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    // Database db = await DataBaseUtils.getDatabase();
    // StorageLocalImpl storageLocalImpl = StorageLocalImpl(db);

    // await storageLocalImpl.createTable(
    //     query:
    //         'CREATE TABLE IF NOT EXISTS Task (taskId INTEGER PRIMARY KEY, taskTitle TEXT,taskDescription TEXT,taskDone INTEGER(1),taskCreatedAt TEXT,taskUpdatedAt TEXT)');
    // TaskModel task = TaskModel(taskTitle: 'Less lazy', taskDescription: 'Start exercise', taskDone: 1, taskCreatedAt: DateTime.now().toIso8601String());
    // await storageLocalImpl.insertInTable(table: 'Task', columnsValues: task.toJson());
    // final test =
    //     await storageLocalImpl.getAllInTable(query: 'Select * from Task');
    // printPrettyJson(test, indent: 2);

  }
}
