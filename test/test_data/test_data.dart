import 'package:flutter_training/model/weather_request.dart';

class TestData {
  static const weatherRequest = WeatherRequest(
    area: 'Kanagawa',
    date: '2023-10-12T12:00:00+09:00',
  );

  static const expectedWeatherRequest = WeatherRequest(
    area: 'Kanagawa',
    date: '2023-10-12T12:00:00+09:00',
  );

  static const matcherWeatherRequest = {
    'area': 'Kanagawa',
    'date': '2023-10-12T12:00:00+09:00',
  };

  static const invalidWeatherRequestData = {
    'area': 123,
    'date': '2023-10-12T12:00:00+09:00',
  };

  static const expectedWeatherResultData = {
    'weather_condition': 'sunny',
    'max_temperature': 30,
    'min_temperature': 15,
    'date': '2023-10-12T00:00:00.000',
  };

  static const invalidWeatherResultData = {
    'weather_condition': 123,
    'max_temperature': 30,
    'min_temperature': 15,
    'date': '2023-10-12T00:00:00.000',
  };

  static const snakeCaseResult = {
    'weatherCondition': 'sunny',
    'maxTemperature': 25,
    'minTemperature': 20,
    'date': '2023-10-12T00:00:00.000',
  };

  static const lackWeatherResultData = {
    'max_temperature': 30,
    'min_temperature': 15,
    'date': '2023-10-12T00:00:00.000',
  };

  static const missWeatherConditionWeatherResult = {
    'weather_condition': 'invalid',
    'max_temperature': '30',
    'min_temperature': 15,
    'date': '2023-10-12T00:00:00.000',
  };

  static const missMaxTemperatureWeatherResult = {
    'weather_condition': 'sunny',
    'max_temperature': '30',
    'min_temperature': 15,
    'date': '2023-10-12T00:00:00.000',
  };

  static const missMinTemperatureWeatherResult = {
    'weather_condition': 'sunny',
    'max_temperature': 30,
    'min_temperature': '15',
    'date': 'invalid',
  };

  static const missDateWeatherResult = {
    'weather_condition': 'sunny',
    'max_temperature': 30,
    'min_temperature': 15,
    'date': 'invalid-date-format',
  };

  static const weatherJson = '''
    {
      "weather_condition": "sunny",
      "max_temperature": 30,
      "min_temperature": 15,
      "date": "2023-10-12T00:00:00.000"
     }
     ''';

  static const weatherMap = {
    'weather_condition': 'sunny',
    'max_temperature': 30,
    'min_temperature': 15,
    'date': '2023-10-12T00:00:00.000',
  };
}
