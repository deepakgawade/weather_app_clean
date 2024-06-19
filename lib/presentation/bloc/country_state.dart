part of 'country_bloc.dart';

sealed class CountryState extends Equatable {
  const CountryState();
  
  @override
  List<Object> get props => [];
}

final class CountryInitialState extends CountryState {}
final class CountryLoadedState extends CountryState {
  final Country county;

 const CountryLoadedState({required this.county});



}
final class CountryFailureState extends CountryState {}
final class CountryLoadingState extends CountryState {}
