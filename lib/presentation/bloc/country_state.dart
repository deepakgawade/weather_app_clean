part of 'country_bloc.dart';

sealed class CountryState extends Equatable {
  const CountryState();
  
  @override
  List<Object> get props => [];
}

final class CountryInitial extends CountryState {}
