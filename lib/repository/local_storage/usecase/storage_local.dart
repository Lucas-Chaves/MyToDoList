abstract class StorageLocal {
  Future<void> createTable({required String query});
  Future<int> insertInTable(
      {required String table, required Map<String, Object?> columnsValues});
  Future<int> deleteInTable(
      {required String table, String? where, List<Object?>? whereArgs});
  Future<int> updateInTable(
      {required String table,
      required Map<String, Object?> columnsValues,
      String? where,
      List<Object?>? whereArgs});
}
