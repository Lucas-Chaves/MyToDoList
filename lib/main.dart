import 'package:flutter/material.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:sqflite/sqflite.dart';

import 'repository/repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Container();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    Database db= await DataBaseUtils.getDatabase();
    StorageLocalImpl storageLocalImpl = StorageLocalImpl(db);
    await storageLocalImpl.createTable(query: 'CREATE TABLE IF NOT EXISTS Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    //await storageLocalImpl.createTable(query: 'INSERT INTO Test(name, value, num) VALUES(\'Lucas\', 1234, 456.789)');
    await storageLocalImpl.insertInTable(table: 'Test', columnsValues: {'name': 'Lucas', 'value': 1234, 'num':457.35});
    await storageLocalImpl.updateInTable(table: 'Test', columnsValues: {'name': 'jorge', 'value': 258, 'num':888.35});
    final test = await db.rawQuery('Select * from Test');
    printPrettyJson(test, indent: 2);;
    await storageLocalImpl.deleteInTable(table: 'Test', where: 'id = 2');
  }
}
