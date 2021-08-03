import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../ui/ui.dart';
import '../../../utils/utils.dart';

class TaskCubit extends Cubit<TaskState> {
  final GetAllDataUseCase getAllDataUseCase;

  TaskCubit({required this.getAllDataUseCase})
      : super(TaskState(status: TaskStatus.initial));

  Future<void> getAllTasks() async{
    try{
      emit(state.copyWith(status: TaskStatus.loading));
      List<TaskModel> allTasks = await getAllDataUseCase.execute("Select * from $kDatabaseName");
      emit(state.copyWith(status: TaskStatus.success, allTasks: allTasks));
    }catch(e){
      emit(state.copyWith(status: TaskStatus.failure));
    }
  }

}
