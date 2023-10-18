import 'package:flutter_test/flutter_test.dart';
import '../test_data/test_data.dart';

void main() {
  const expectedWeatherRequest = TestData.expectedWeatherRequest;
  const matcherWeatherRequest = TestData.matcherWeatherRequest;

  test('success to do toJson', () {
    final result = expectedWeatherRequest.toJson();
    expect(result, matcherWeatherRequest);
  });
}
