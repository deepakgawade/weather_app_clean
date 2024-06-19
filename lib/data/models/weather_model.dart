import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_clean/domain/entities/country.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class CountryModel extends Equatable{
 const  CountryModel({required this.population,required this.name, required this.currencies, required this.capital, required this.region, required this.borders, required this.area, required this.maps, required this.continents, required this.flags, required this.capitalInfo});





  @override
  List<Object?> get props => [name,currencies,capital,region,borders,area,maps,continents,flags,capitalInfo,population];

  final NameModel name;
  final Map<String, dynamic> currencies;
  final List<String> capital;
  final String region;
  final List<String> borders;
  final double area;
  final Maps maps;
  final List<String> continents;
  final int population;

  final Flags flags; 
  final Capital capitalInfo;

    factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  
  Country toEntity(){
    return Country(name: name.official, common: name.common, currencies: currencies.toString(), capital: capital.first, capitalLocation: '', countryLocation: maps.googleMaps, borders: borders, area: area, population: population, flags:[ flags.png], coatOfArms: '');
  }




}
@JsonSerializable()
class NameModel extends Equatable{

  final String common;
  final String official;

      factory NameModel.fromJson(Map<String, dynamic> json) =>
      _$NameModelFromJson(json);

  const NameModel({required this.common, required this.official});
 

  @override
  List<Object?> get props => [common, official];

}
@JsonSerializable()
class Maps extends Equatable{

  final String googleMaps;
 

      factory Maps.fromJson(Map<String, dynamic> json) =>
      _$MapsFromJson(json);

  const Maps({required this.googleMaps,});


  @override
  List<Object?> get props => [googleMaps,];

}
@JsonSerializable()
class Flags extends Equatable{

  final String png;
 

      factory Flags.fromJson(Map<String, dynamic> json) =>
      _$FlagsFromJson(json);

  const Flags({required this.png,});
 

  @override
  List<Object?> get props => [png,];

}
@JsonSerializable()
class Capital extends Equatable{

  final List<double> latlng;
 

      factory Capital.fromJson(Map<String, dynamic> json) =>
      _$CapitalFromJson(json);

  const Capital({required this.latlng,});
 

  @override
  List<Object?> get props => [latlng,];

}