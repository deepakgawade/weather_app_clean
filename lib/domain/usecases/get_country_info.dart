import 'package:dartz/dartz.dart';
import 'package:weather_clean/domain/entities/country.dart';
import 'package:weather_clean/domain/repositories/country_repository.dart';

import '../../data/failure.dart';

class GetCountryInfomation{
  final CountryRepository weatherRepository;

  GetCountryInfomation({required this.weatherRepository});


  Future<Either<Failure,Country>> execute(String cityName){
    return weatherRepository.getCountryInfo(cityName);
  }


}