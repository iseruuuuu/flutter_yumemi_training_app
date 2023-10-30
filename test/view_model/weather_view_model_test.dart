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
  // Arrange
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
    // Arrange
    final viewModel = create();
    // Assert
    expect(
      viewModel.state,
      const WeatherScreenState.initial(),
    );
  });

  test('Success to get weather', () async {
    // Arrange
    final mockWeather = WeatherResult(
      weatherCondition: WeatherCondition.sunny,
      maxTemperature: 30,
      minTemperature: 15,
      date: DateTime(2023, 10, 12),
    );
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (realInvocation) async => Result.success(mockWeather),
    );
    final viewModel = create();
    // Act
    await viewModel.reloadWeather();
    // Assert
    expect(
      viewModel.state,
      const WeatherScreenState.data(
        weatherCondition: WeatherCondition.sunny,
        maxTemperature: '30',
        minTemperature: '15',
      ),
    );
  });

  test('Failure to check "initial -> error"', () async {
    // Arrange
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) async => const Result.failure(''),
    );
    final viewModel = create();
    // Act
    await viewModel.reloadWeather();
    // Assert
    expect(
      viewModel.state,
      const WeatherScreenState.initial(),
    );
  });

  test('Failure to check "data -> error"', () async {
    // Arrange
    final mockWeather = WeatherResult(
      weatherCondition: WeatherCondition.sunny,
      maxTemperature: 30,
      minTemperature: 15,
      date: DateTime(2023, 10, 12),
    );
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) async => Result.success(mockWeather),
    );
    final viewModel = create();
    // Act
    await viewModel.reloadWeather();
    final beforeState = viewModel.state;
    // Assert
    expect(
      viewModel.state,
      const WeatherScreenState.data(
        weatherCondition: WeatherCondition.sunny,
        maxTemperature: '30',
        minTemperature: '15',
      ),
    );
    // Arrange
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) async => const Result.failure('error'),
    );
    // Act
    await viewModel.reloadWeather();
    final currentState = viewModel.state;
    // Assert
    expect(
      currentState,
      beforeState,
    );
  });
}
