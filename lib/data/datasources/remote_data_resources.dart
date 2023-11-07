import 'package:dio/dio.dart';
import 'package:weather_clean/data/exceptions.dart';
import 'package:weather_clean/data/failure.dart';
import 'package:weather_clean/data/models/weather_model.dart';

abstract class RemoteDataSouces{
  Future<CountryModel> getCountryInfo(String country);

}


class GeCountryInfo extends RemoteDataSouces{
  final Dio dio;

  GeCountryInfo({required this.dio});
  @override
  Future<CountryModel> getCountryInfo(String country) async {
    try {
          final  result = await dio.get('https://restcountries.com/v3.1/name/$country');
   
           final countyData = CountryModel.fromJson(result.data);
             return countyData;
    
   
      
    } catch (e) {
      rethrow ;
    }


  }

}