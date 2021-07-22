import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do/repository/local_storage/local_storage.dart';
import './ui/ui.dart';
import './main_app.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Database db = await DataBaseUtils.getDatabase();
  StorageLocalImpl storageLocalImpl = StorageLocalImpl(db);

  final providers = [
    BlocProvider<HomeCubit>(
      create: (BuildContext context) => HomeCubit(
        createDataBaseUseCase: CreateDataBaseUseCase(storageLocalImpl),
      ),
    ),
  ];

  runApp(
    MultiBlocProvider(
      providers: providers,
      child: MainApp(),
    ),
  );
}
