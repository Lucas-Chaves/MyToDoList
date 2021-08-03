import 'package:to_do/utils/models/models.dart';

import '../../../repository/local_storage/local_storage.dart';

class GetAllDataUseCase {
  StorageLocal _storageLocal;

  GetAllDataUseCase(this._storageLocal);

  Future<List<TaskModel>> execute(String query) async {
    final data = await _storageLocal.getAllInTable(query: query);
    List<TaskModel> allTasks = [];
    data.forEach((element) {
      allTasks.add(TaskModel.fromJson(element));
    });
    return allTasks;
  }
}
