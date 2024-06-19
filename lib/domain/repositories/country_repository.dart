import 'package:dartz/dartz.dart';
import 'package:weather_clean/data/failure.dart';
import 'package:weather_clean/domain/entities/country.dart';

abstract class CountryRepository {

  Future<Either<Failure,Country>> getCountryInfo(String country);
}