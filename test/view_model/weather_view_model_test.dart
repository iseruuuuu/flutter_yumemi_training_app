import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/constant/weather_condition.dart';
import 'package:flutter_training/model/result.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:flutter_training/repository/weather_repository.dart';
import 'package:flutter_training/view/weather_screen_state.dart';
import 'package:flutter_training/view/weather_screen_view_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'weather_view_model_test.mocks.dart';

@GenerateMocks([WeatherRepository])
void main() {
  final mockWeatherRepository = MockWeatherRepository();
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        weatherRepositoryProvider.overrideWithValue(mockWeatherRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  WeatherScreenViewModel create() =>
      container.read(weatherScreenViewModelProvider().notifier);

  test('Check initial status', () {
    final state =
        container.read(weatherScreenViewModelProvider().notifier).build();
    expect(
      state,
      const WeatherScreenState.initial(),
    );
  });

  test('Success to get weather', () {
    final mockWeather = WeatherResult(
      weatherCondition: WeatherCondition.sunny,
      maxTemperature: 30,
      minTemperature: 15,
      date: DateTime(2023, 10, 12),
    );
    when(mockWeatherRepository.getWeather(any)).thenReturn(
      Result.success(mockWeather),
    );
    final viewModel = create()..reloadWeather();
    expect(
      viewModel.state,
      const WeatherScreenState.data(
        weatherCondition: WeatherCondition.sunny,
        maxTemperature: '30',
        minTemperature: '15',
      ),
    );
  });

  test('Failure to check "initial -> error"', () {
    when(mockWeatherRepository.getWeather(any)).thenReturn(
      const Result.failure(''),
    );
    create().reloadWeather();
    final state = create().state;
    expect(
      state,
      const WeatherScreenState.initial(),
    );
  });

  test('Failure to check "data -> error"', () {
    final mockWeather = WeatherResult(
      weatherCondition: WeatherCondition.sunny,
      maxTemperature: 30,
      minTemperature: 15,
      date: DateTime(2023, 10, 12),
    );
    when(mockWeatherRepository.getWeather(any)).thenReturn(
      Result.success(mockWeather),
    );
    create().reloadWeather();
    final state = create().state;

    when(mockWeatherRepository.getWeather(any)).thenReturn(
      const Result.failure('error'),
    );
    create().reloadWeather();
    final currentState = create().state;
    expect(
      currentState,
      state,
    );
  });
}
