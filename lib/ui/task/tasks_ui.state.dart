import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class HomeStates extends Equatable {
  const HomeStates();
}

class HomeInitialState extends HomeStates {
  const HomeInitialState();

  @override
  List<Object> get props => [];
}
