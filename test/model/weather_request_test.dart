import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/model/weather_request.dart';

void main() {
  const weatherRequestData = WeatherRequest(
    area: 'Kanagawa',
    date: '2023-10-12T12:00:00+09:00',
  );

  test('success to do toJson', () {
    final result = weatherRequestData.toJson();
    expect(
      result,
      {
        'area': 'Kanagawa',
        'date': '2023-10-12T12:00:00+09:00',
      },
    );
  });
}
