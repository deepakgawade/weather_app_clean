import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_clean/domain/entities/country.dart';
import 'package:weather_clean/domain/usecases/get_current_weather.dart';

import '../../helpers/test_helpers.mocks.dart';

void main() {
  late MockWeatherRepository mockWeatherRepository;
  late GetCurrentWeather usecase;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    usecase = GetCurrentWeather(weatherRepository: mockWeatherRepository);
  });



  const cityName="Mumbai";

}
