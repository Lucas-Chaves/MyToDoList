import 'package:equatable/equatable.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  failure,
  nextPage,
}

class HomeState extends Equatable {
  final HomeStatus status;

  const HomeState({this.status = HomeStatus.initial});

  @override
  List<Object?> get props => [status];

  @override
  bool get stringify => true;

  HomeState copyWith({HomeStatus? status}) {
    return HomeState(status: status ?? this.status);
  }
}
