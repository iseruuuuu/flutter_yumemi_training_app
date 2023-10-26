import 'package:flutter/foundation.dart';
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

  test('Success to get weather data', () async {
    when(mockYumemiWeather.syncFetchWeather(any)).thenReturn(weatherJson);
    final result =
        await compute(weatherDataSource.fetchWeather, weatherRequest);
    expect(result['weather_condition'], 'sunny');
    expect(result['max_temperature'], 30);
    expect(result['min_temperature'], 15);
    expect(result['date'], '2023-10-12T00:00:00.000');
  });

  test('Failure to  get error by "unknown"', () {
    when(mockYumemiWeather.syncFetchWeather(any))
        .thenThrow(YumemiWeatherError.unknown);
    expect(
      () => compute(weatherDataSource.fetchWeather, weatherRequest),
      throwsA(YumemiWeatherError.unknown),
    );
  });

  test('Failure to  get error by "invalidParameter"', () {
    when(mockYumemiWeather.syncFetchWeather(any))
        .thenThrow(YumemiWeatherError.invalidParameter);
    expect(
      () => compute(weatherDataSource.fetchWeather, weatherRequest),
      throwsA(YumemiWeatherError.invalidParameter),
    );
  });
}
