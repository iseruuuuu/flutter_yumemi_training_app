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

  // 成功パターン
  test('success to get weather data', () {
    // thenReturnで、モックオブジェクトのメソッド呼び出しが行われた際の戻り値を設定
    when(mockYumemiWeather.fetchWeather(any)).thenReturn(weatherJson);
    final result = weatherDataSource.fetchWeather(weatherRequest);
    expect(result['weather_condition'], 'sunny');
    expect(result['max_temperature'], 30);
    expect(result['min_temperature'], 15);
    expect(result['date'], '2023-10-12T00:00:00.000');
  });

  // 失敗パターン(YumemiWeatherError.unknown)
  test('failure is "unknown"', () {
    // thenThrowでモックオブジェクトのメソッド呼び出しでエラーを"unknown"をThrowする
    when(mockYumemiWeather.fetchWeather(any))
        .thenThrow(YumemiWeatherError.unknown);
    expect(
      () => weatherDataSource.fetchWeather(weatherRequest),
      throwsA(YumemiWeatherError.unknown),
    );
  });

  // 失敗パターン(YumemiWeatherError.invalidParameter)
  test('failure is "invalidParameter"', () {
    // thenThrowでモックオブジェクトのメソッド呼び出しでエラーを"invalidParameter"をThrowする
    when(mockYumemiWeather.fetchWeather(any))
        .thenThrow(YumemiWeatherError.invalidParameter);
    expect(
      () => weatherDataSource.fetchWeather(weatherRequest),
      //　特定のエラーオブジェクトをスローすることを期待するためのmatcher
      throwsA(YumemiWeatherError.invalidParameter),
    );
  });

  test('success to encode', () {
    final encodeWeatherRequest = weatherDataSource.encode(weatherRequest);
    expect(
      encodeWeatherRequest,
      '{"area":"Kanagawa","date":"2023-10-12T12:00:00+09:00"}',
    );
  });

  test('success to decode', () {
    final decodeData = weatherDataSource.decode(weatherJson);
    expect(decodeData['weather_condition'], 'sunny');
    expect(decodeData['max_temperature'], 30);
    expect(decodeData['min_temperature'], 15);
    expect(decodeData['date'], '2023-10-12T00:00:00.000');
  });

  test('failure to decode', () {
    const invalidJson = '{"invalid_json":}';
    expect(
      () => weatherDataSource.decode(invalidJson),
      throwsA(isA<FormatException>()),
    );
  });
}
