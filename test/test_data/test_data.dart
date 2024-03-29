import 'package:flutter_training/model/weather_request.dart';

class TestData {
  static const weatherRequest = WeatherRequest(
    area: 'Kanagawa',
    date: '2023-10-12T12:00:00+09:00',
  );

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
