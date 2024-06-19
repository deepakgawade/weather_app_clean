part of 'second_bloc.dart';

sealed class SecondState extends Equatable {
  const SecondState();
  
  @override
  List<Object> get props => [];
}

final class SecondInitial extends SecondState {}
