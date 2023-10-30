import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/data_source/weather_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';
import '../test_data/test_data.dart';
import 'weather_data_source_test.mocks.dart';

@GenerateMocks([YumemiWeather])
void main() {
  // Arrange
  final mockYumemiWeather = MockYumemiWeather();
  final weatherDataSource = WeatherDataSource(mockYumemiWeather);
  const weatherRequest = TestData.weatherRequest;
  const weatherJson = TestData.weatherJson;

  test('Success to get weather data', () async {
    // Arrange
    when(mockYumemiWeather.syncFetchWeather(any)).thenReturn(weatherJson);
    // Act
    final result = await weatherDataSource.fetchWeather(weatherRequest);
    // Assert
    expect(result['weather_condition'], 'sunny');
    expect(result['max_temperature'], 30);
    expect(result['min_temperature'], 15);
    expect(result['date'], '2023-10-12T00:00:00.000');
  });

  test('Failure to  get error by "unknown"', () {
    // Arrange
    when(mockYumemiWeather.syncFetchWeather(any))
        .thenThrow(YumemiWeatherError.unknown);
    // Act
    final result = weatherDataSource.fetchWeather(weatherRequest);
    // Assert
    expect(
      () => result,
      throwsA(YumemiWeatherError.unknown),
    );
  });

  test('Failure to  get error by "invalidParameter"', () {
    // Arrange
    when(mockYumemiWeather.syncFetchWeather(any))
        .thenThrow(YumemiWeatherError.invalidParameter);
    // Act, Assert
    expect(
      () => weatherDataSource.fetchWeather(weatherRequest),
      throwsA(YumemiWeatherError.invalidParameter),
    );
  });
}
