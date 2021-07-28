import 'package:flutter/material.dart';
import 'package:to_do/theme/theme_dark.dart';
import 'package:to_do/ui/home/home.dart';


class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My ToDo List',
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
