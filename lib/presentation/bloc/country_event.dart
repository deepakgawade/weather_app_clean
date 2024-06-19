part of 'country_bloc.dart';

sealed class CountryEvent extends Equatable {
  const CountryEvent();

  @override
  List<Object> get props => [];
}

class CountryResetEvent extends CountryEvent{
  

}
class CountrySearchEvent extends CountryEvent{
  final String country;

 const CountrySearchEvent({required this.country});
}
