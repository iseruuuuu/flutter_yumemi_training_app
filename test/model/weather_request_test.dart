import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/model/weather_request.dart';
import '../test_data/test_data.dart';

void main() {
  const weatherRequestData = TestData.weatherRequestData;

  test('success to do toJson', () {
    final result = const WeatherRequest(
      area: 'Kanagawa',
      date: '2023-10-12T12:00:00+09:00',
    ).toJson();
    expect(
      result,
      weatherRequestData,
    );
  });
}
