import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../../utils/constants.dart';

class DataBaseUtils {
  static Future<Database> getDatabase() async {
    try {
      String databasesPath = await getDatabasesPath();
      String path = join(databasesPath, kDatabaseName);
      Database database = await openDatabase(path);
      print("database is running and open: " + database.isOpen.toString());
      return database;
    } catch (e) {
      throw('Erro ao abrir banco: \n' + e.toString());
    }
  }
}