import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:weather_clean/data/datasources/remote_data_resources.dart';
import 'package:weather_clean/data/exceptions.dart';
import 'package:weather_clean/data/failure.dart';
import 'package:weather_clean/domain/entities/country.dart';
import 'package:weather_clean/domain/repositories/country_repository.dart';

class CountryRepositoryImpl extends WeatherRepository{
  final RemoteDataSouces remoteDataSouces;

  CountryRepositoryImpl({required this.remoteDataSouces});
  @override
  Future<Either<Failure, Country>> getCountryInfo(String country)async {

  try {
    final result= await remoteDataSouces.getCountryInfo(country);

    return Right(result.toEntity());

  } on ServerException catch (e){
    return Left(ServerFailure('$e'));
    
  }on SocketException {
    return const Left(ConnectionFailure('Failed to coonect to internet'));
  }
  }

}