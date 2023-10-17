import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/constant/weather_condition.dart';
import 'package:flutter_training/model/weather_result.dart';
import '../test_data/test_data.dart';

void main() {
  const weatherResultData = TestData.weatherResultData;
  const invalidWeatherResultData = TestData.invalidWeatherResultData;

  test('success to do fromJson', () {
    final result = WeatherResult.fromJson(weatherResultData);
    expect(result.weatherCondition, WeatherCondition.sunny);
    expect(result.maxTemperature, 30);
    expect(result.minTemperature, 15);
    expect(result.date, DateTime(2023, 10, 12));
  });

  test('failure to do fromJson', () {
    expect(
      () => WeatherResult.fromJson(invalidWeatherResultData),
      throwsA(isA<ArgumentError>()),
    );
  });
}
