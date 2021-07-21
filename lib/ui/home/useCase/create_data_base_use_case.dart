import '../../../repository/local_storage/local_storage.dart';

class CreateDataBaseUseCase {
  StorageLocal storageLocal;

  CreateDataBaseUseCase({required this.storageLocal});

  Future<void> execute(String query) async {
    await storageLocal.createTable(query: query);
  }
}