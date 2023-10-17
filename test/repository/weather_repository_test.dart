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
  const weatherRequest = TestData.weatherRequest;
  final weatherRepository = WeatherRepository(mockWeatherDataSource);

  // 成功パターン
  // Result.successが返ってくる。
  test('Success to get weather', () {
    final mockWeather = {
      'weather_condition': 'sunny',
      'max_temperature': 30,
      'min_temperature': 15,
      'date': '2023-10-12T00:00:00.000',
    };
    when(mockWeatherDataSource.fetchWeather(any)).thenReturn(mockWeather);
    final result = weatherRepository.getWeather(weatherRequest);
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

  // 失敗パターン（YumemiWeatherError.unknown）
  // Result.failureが返ってくる。
  test('Failure to get weather by YumemiWeatherError.unknown', () {
    when(mockWeatherDataSource.fetchWeather(any))
        .thenThrow(YumemiWeatherError.unknown);
    final result = weatherRepository.getWeather(weatherRequest);
    expect(
      result,
      const Result<WeatherResult, String>.failure(ErrorMessage.unknown),
    );
  });

  // 失敗パターン（YumemiWeatherError.invalidParameter）
  // Result.failureが返ってくる。
  test('Failure to get weather by invalidParameter ', () {
    when(mockWeatherDataSource.fetchWeather(any))
        .thenThrow(YumemiWeatherError.invalidParameter);
    final result = weatherRepository.getWeather(weatherRequest);
    expect(
      result,
      const Result<WeatherResult, String>.failure(
        ErrorMessage.invalidParameter,
      ),
    );
  });

  test('Failure to get weather by other error ', () {
    // 実行中に異常が起こった場合のテストのため、Exceptionを使用
    when(mockWeatherDataSource.fetchWeather(any)).thenThrow(Exception());
    final result = weatherRepository.getWeather(weatherRequest);
    expect(
      result,
      const Result<WeatherResult, String>.failure(ErrorMessage.other),
    );
  });
}
