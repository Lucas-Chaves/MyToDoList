import 'package:sqflite/sqflite.dart';

import 'usecase/storage_local.dart';

class StorageLocalImpl implements StorageLocal {
  final Database database;

  StorageLocalImpl(this.database);

  @override
  Future<void> createTable({required String query}) async {
    try {
      await database.transaction((txn) async {
        txn.execute(query);
      });
    } catch (e) {
      throw ('Error ao criar tabela \n' + e.toString());
    }
  }

  @override
  Future<int> deleteInTable({
    required String table,
    String? where,
    List<Object?>? whereArgs,
  }) async {
    try {
      int rowsAffected = 0;
      await database.transaction((txn) async {
        rowsAffected =
            await txn.delete(table, where: where, whereArgs: whereArgs);
        print(rowsAffected);
      });
      return rowsAffected;
    } catch (e) {
      throw ('Error ao deletar linha/as da tabela \n' + e.toString());
    }
  }

  @override
  Future<int> insertInTable(
      {required String table,
      required Map<String, Object?> columnsValues}) async {
    try {
      int rowsAffected = 0;
      await database.transaction((txn) async {
        rowsAffected = await txn.insert(table, columnsValues,
            conflictAlgorithm: ConflictAlgorithm.ignore);
        print(rowsAffected);
      });
      return rowsAffected;
    } catch (e) {
      throw ('Error ao inserir linha/as da tabela \n' + e.toString());
    }
  }

  @override
  Future<int> updateInTable({
    required String table,
    required Map<String, Object?> columnsValues,
    String? where,
    List<Object?>? whereArgs,
  }) async {
    try {
      int rowsAffected = 0;
      await database.transaction((txn) async {
        rowsAffected = await txn.update(table, columnsValues,
            where: where, whereArgs: whereArgs);
        print(rowsAffected);
      });
      return rowsAffected;
    } catch (e) {
      throw ('Error ao atualizar linha/as da tabela \n' + e.toString());
    }
  }

  @override
  Future<List<Map<String, Object?>>> getAllInTable(
      {required String query}) async {
    try {
      List<Map<String, Object?>> rowsAffected = [];
      await database.transaction((txn) async {
        rowsAffected = await txn.rawQuery(query);
        print(rowsAffected);
      });
      return rowsAffected;
    } catch (e) {
      throw ('Error ao atualizar linha/as da tabela \n' + e.toString());
    }
  }
}
