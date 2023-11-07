// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
      name: NameModel.fromJson(json['name'] as Map<String, dynamic>),
      currencies: json['currencies'],
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      region: json['region'] as String,
      borders:
          (json['borders'] as List<dynamic>).map((e) => e as String).toList(),
      area: (json['area'] as num).toDouble(),
      maps: Maps.fromJson(json['maps'] as Map<String, dynamic>),
      continents: (json['continents'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      capitalInfo:
          Capital.fromJson(json['capitalInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'currencies': instance.currencies,
      'capital': instance.capital,
      'region': instance.region,
      'borders': instance.borders,
      'area': instance.area,
      'maps': instance.maps,
      'continents': instance.continents,
      'flags': instance.flags,
      'capitalInfo': instance.capitalInfo,
    };

NameModel _$NameModelFromJson(Map<String, dynamic> json) => NameModel(
      common: json['common'] as String,
      official: json['official'] as String,
    );

Map<String, dynamic> _$NameModelToJson(NameModel instance) => <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
    };

Maps _$MapsFromJson(Map<String, dynamic> json) => Maps(
      googleMaps: json['googleMaps'] as String,
    );

Map<String, dynamic> _$MapsToJson(Maps instance) => <String, dynamic>{
      'googleMaps': instance.googleMaps,
    };

Flags _$FlagsFromJson(Map<String, dynamic> json) => Flags(
      png: json['png'] as String,
    );

Map<String, dynamic> _$FlagsToJson(Flags instance) => <String, dynamic>{
      'png': instance.png,
    };

Capital _$CapitalFromJson(Map<String, dynamic> json) => Capital(
      latlng:
          (json['latlng'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CapitalToJson(Capital instance) => <String, dynamic>{
      'latlng': instance.latlng,
    };
