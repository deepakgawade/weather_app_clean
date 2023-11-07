import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_clean/data/models/weather_model.dart';
import 'package:weather_clean/domain/entities/country.dart';

import '../../helpers/json_reader.dart';

void main() {






  group("from json", () { 
    test("fromjason", () {
      //arange
      final Map<String, dynamic> data = jsonDecode(readJson('helpers/dummydata/dummy_weather_response.json'));
      //action
      //final result = WeatherModel.fromJson(data);
      //assert
      //expect(result,equals(tWeatherModel) );
    });
  });

}
