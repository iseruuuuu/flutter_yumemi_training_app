import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/data_source/weather_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';
import '../test_data/test_data.dart';
import 'weather_data_source_test.mocks.dart';

@GenerateMocks([YumemiWeather])
void main() {
  final mockYumemiWeather = MockYumemiWeather();
  final weatherDataSource = WeatherDataSource(mockYumemiWeather);
  const weatherRequest = TestData.weatherRequest;
  const weatherJson = TestData.weatherJson;

  test('Success to get weather data', () {
    // thenReturnで、モックオブジェクトのメソッド呼び出しが行われた際の戻り値を設定
    when(mockYumemiWeather.fetchWeather(any)).thenReturn(weatherJson);
    final result = weatherDataSource.fetchWeather(weatherRequest);
    expect(result['weather_condition'], 'sunny');
    expect(result['max_temperature'], 30);
    expect(result['min_temperature'], 15);
    expect(result['date'], '2023-10-12T00:00:00.000');
  });

  test('Failure to  get error by "unknown"', () {
    // thenThrowでモックオブジェクトのメソッド呼び出しでエラーを"unknown"をThrowする
    when(mockYumemiWeather.fetchWeather(any))
        .thenThrow(YumemiWeatherError.unknown);
    expect(
      () => weatherDataSource.fetchWeather(weatherRequest),
      throwsA(YumemiWeatherError.unknown),
    );
  });

  test('Failure to  get error by "invalidParameter"', () {
    // thenThrowでモックオブジェクトのメソッド呼び出しでエラーを"invalidParameter"をThrowする
    when(mockYumemiWeather.fetchWeather(any))
        .thenThrow(YumemiWeatherError.invalidParameter);
    expect(
      () => weatherDataSource.fetchWeather(weatherRequest),
      throwsA(YumemiWeatherError.invalidParameter),
    );
  });
}
