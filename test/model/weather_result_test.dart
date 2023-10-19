import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/constant/weather_condition.dart';
import 'package:flutter_training/model/weather_result.dart';
import '../test_data/test_data.dart';

void main() {
  test('Successfully executed fromJson', () {
    const expectedWeatherResultData = TestData.expectedWeatherResultData;
    final result = WeatherResult.fromJson(expectedWeatherResultData);
    expect(result.weatherCondition, WeatherCondition.sunny);
    expect(result.maxTemperature, 30);
    expect(result.minTemperature, 15);
    expect(result.date, DateTime(2023, 10, 12));
  });

  test('Failed to execute fromJson due to an incorrect JSON key', () {
    const missWeatherCondition = TestData.missWeatherConditionWeatherResult;
    const missMaxTemperature = TestData.missMaxTemperatureWeatherResult;
    const missMinTemperature = TestData.missMinTemperatureWeatherResult;
    const missDateWeather = TestData.missDateWeatherResult;
    expect(
      () => WeatherResult.fromJson(missWeatherCondition),
      throwsA(isA<ArgumentError>()),
    );
    expect(
      () => WeatherResult.fromJson(missMaxTemperature),
      throwsA(isA<TypeError>()),
    );
    expect(
      () => WeatherResult.fromJson(missMinTemperature),
      throwsA(isA<TypeError>()),
    );
    expect(
      () => WeatherResult.fromJson(missDateWeather),
      throwsA(isA<FormatException>()),
    );
  });

  test('Failed to execute fromJson because of an unintended snake_case', () {
    const snakeCaseResult = TestData.snakeCaseResult;
    expect(
      () => WeatherResult.fromJson(snakeCaseResult),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('Failed to execute fromJson due to lack of JSON data."', () {
    const lackWeatherResultData = TestData.lackWeatherResultData;
    expect(
      () => WeatherResult.fromJson(lackWeatherResultData),
      throwsA(isA<ArgumentError>()),
    );
  });
}
