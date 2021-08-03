import 'package:flutter/material.dart';
import './theme/theme_dark.dart';
import './ui/ui.dart';


class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  final Map<String, WidgetBuilder> myRoutes = {
    "/main": (BuildContext context) => HomePage(),
    "/tasks": (BuildContext context) => TaskPage(),
  };




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My ToDo List',
      theme: themeData,
      routes: myRoutes,
      home: HomePage(),
    );
  }
}
