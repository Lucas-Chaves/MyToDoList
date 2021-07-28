import '../../../repository/local_storage/local_storage.dart';

class CreateDataBaseUseCase {
  StorageLocal _storageLocal;

  CreateDataBaseUseCase(this._storageLocal);

  Future<void> execute(String query) async {
    await _storageLocal.createTable(query: query);
  }
}