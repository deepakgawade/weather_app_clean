import 'package:dartz/dartz.dart';
import 'package:weather_clean/data/failure.dart';
import 'package:weather_clean/domain/entities/weather.dart';

abstract class WeatherRepository {

  Future<Either<Failure,Country>> getCountryInfo(String country);
}