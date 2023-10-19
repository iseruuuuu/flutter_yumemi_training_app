import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/model/weather_result.dart';

void main() {
  test('fromJsonが正常に実行できた', () {
    const weatherResultData = {
      'weather_condition': 'sunny',
      'max_temperature': 30,
      'min_temperature': 15,
      'date': '2023-10-12T00:00:00.000',
    };
    final result = WeatherResult.fromJson(weatherResultData);
    expect(result.weatherCondition.name, 'sunny');
    expect(result.maxTemperature, 30);
    expect(result.minTemperature, 15);
    expect(result.date, DateTime(2023, 10, 12));
  });

  test('valueの型や値が間違っており、fromJsonができない', () {
    const invalidWeatherCondition = {
      'weather_condition': 'sanny',
      'max_temperature': 30,
      'min_temperature': 15,
      'date': '2023-10-12T00:00:00.000',
    };
    expect(
      () => WeatherResult.fromJson(invalidWeatherCondition),
      throwsA(isA<ArgumentError>()),
    );

    const invalidMaxTemperature = {
      'weather_condition': 'sunny',
      'max_temperature': '30',
      'min_temperature': 15,
      'date': '2023-10-12T00:00:00.000',
    };
    expect(
      () => WeatherResult.fromJson(invalidMaxTemperature),
      throwsA(isA<TypeError>()),
    );

    const invalidMinTemperature = {
      'weather_condition': 'sunny',
      'max_temperature': 30,
      'min_temperature': '15',
      'date': '2023-10-12T00:00:00.000',
    };
    expect(
      () => WeatherResult.fromJson(invalidMinTemperature),
      throwsA(isA<TypeError>()),
    );
  });

  test('keyがスネークケースになっておらず、fromJsonができない', () {
    const lowerCamelWeatherResult = {
      'weatherCondition': 'sunny',
      'maxTemperature': 30,
      'minTemperature': 15,
      'date': '2023-10-12T00:00:00.000',
    };
    expect(
      () => WeatherResult.fromJson(lowerCamelWeatherResult),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('Json型のデータに不足があり、fromJsonができない', () {
    const lackWeatherCondition = {
      'max_temperature': 30,
      'min_temperature': 15,
      'date': '2023-10-12T00:00:00.000',
    };
    expect(
      () => WeatherResult.fromJson(lackWeatherCondition),
      throwsA(isA<ArgumentError>()),
    );
  });
}
