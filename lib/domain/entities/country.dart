import 'package:equatable/equatable.dart';

class Country extends Equatable {

  final String name;
  final String common;
  final String currencies;
  final String capital;
  final String capitalLocation;
  final String countryLocation;
  final List<String> borders;
  final double area;
  final int population;
  final List<String> flags;
  final String coatOfArms ;

 const Country({required this.name, required this.common, required this.currencies, required this.capital, required this.capitalLocation, required this.countryLocation, required this.borders, required this.area, required this.population, required this.flags, required this.coatOfArms});




  @override
  List<Object?> get props => [name,common,currencies,capital,capitalLocation,countryLocation,borders,area,population,flags,coatOfArms];
}
