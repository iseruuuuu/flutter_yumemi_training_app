import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/model/weather_request.dart';
import '../test_data/test_data.dart';

void main() {
  const weatherRequestData = TestData.weatherRequestData;
  const invalidWeatherRequestData = TestData.invalidWeatherRequestData;

  test('success to do fromJson', () {
    final result = WeatherRequest.fromJson(weatherRequestData);
    expect(result.area, 'Kanagawa');
    expect(result.date, '2023-10-12T12:00:00+09:00');
  });

  test('failure to do fromJson', () {
    expect(
      () => WeatherRequest.fromJson(invalidWeatherRequestData),
      throwsA(
        isA<TypeError>(),
      ),
    );
  });
}
