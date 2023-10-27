import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/constant/error_message.dart';
import 'package:flutter_training/constant/weather_condition.dart';
import 'package:flutter_training/data_source/weather_data_source.dart';
import 'package:flutter_training/model/result.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:flutter_training/repository/weather_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';
import '../test_data/test_data.dart';
import 'weather_repository_test.mocks.dart';

@GenerateMocks([
  WeatherDataSource,
])
void main() {
  final mockWeatherDataSource = MockWeatherDataSource();
  final weatherRepository = WeatherRepository(mockWeatherDataSource);
  const weatherRequest = TestData.weatherRequest;
  const mockWeather = TestData.weatherMap;

  test('Success to get weather', () async {
    when(mockWeatherDataSource.fetchWeather(any))
        .thenAnswer((_) async => mockWeather);
    final result = await weatherRepository.getWeather(weatherRequest);
    expect(
      result,
      Result<WeatherResult, String>.success(
        WeatherResult(
          weatherCondition: WeatherCondition.sunny,
          maxTemperature: 30,
          minTemperature: 15,
          date: DateTime(2023, 10, 12),
        ),
      ),
    );
  });

  test('Failure to get weather by YumemiWeatherError.unknown', () async {
    when(mockWeatherDataSource.fetchWeather(any))
        .thenThrow(YumemiWeatherError.unknown);
    final result = await weatherRepository.getWeather(weatherRequest);
    expect(
      result,
      const Result<WeatherResult, String>.failure(ErrorMessage.unknown),
    );
  });

  test('Failure to get weather by invalidParameter ', () async {
    when(mockWeatherDataSource.fetchWeather(any))
        .thenThrow(YumemiWeatherError.invalidParameter);
    final result = await weatherRepository.getWeather(weatherRequest);
    expect(
      result,
      const Result<WeatherResult, String>.failure(
        ErrorMessage.invalidParameter,
      ),
    );
  });

  test('Failure to get weather by other error ', () async {
    when(mockWeatherDataSource.fetchWeather(any)).thenThrow(Exception());
    final result = await weatherRepository.getWeather(weatherRequest);
    expect(
      result,
      const Result<WeatherResult, String>.failure(ErrorMessage.other),
    );
  });
}
