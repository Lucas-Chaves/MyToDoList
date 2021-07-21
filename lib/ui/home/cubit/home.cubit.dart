import 'package:flutter_bloc/flutter_bloc.dart';
import './home.state.dart';
import '../useCase/create_data_base_use_case.dart';

class HomeCubit extends Cubit<HomeState> {
  final CreateDataBaseUseCase createDataBaseUseCase;

  HomeCubit({
    required this.createDataBaseUseCase,
  }) : super(HomeState(status: HomeStatus.initial));


  Future<void> createDataBase() async {
    try{
      emit(state.copyWith(status: HomeStatus.loading));

    }catch(e){

    }
  }
}