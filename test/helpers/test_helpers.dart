import 'package:dio/dio.dart';

import 'package:mockito/annotations.dart';
import 'package:weather_clean/domain/repositories/country_repository.dart';

@GenerateMocks([
  WeatherRepository,
], customMocks: [
  MockSpec<Dio>(as: #MockDio)
])
void main() {}
