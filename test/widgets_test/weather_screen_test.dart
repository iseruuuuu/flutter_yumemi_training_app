import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/constant/error_message.dart';
import 'package:flutter_training/constant/weather_condition.dart';
import 'package:flutter_training/model/result.dart';
import 'package:flutter_training/model/weather_result.dart';
import 'package:flutter_training/repository/weather_repository.dart';
import 'package:flutter_training/view/weather_screen.dart';
import 'package:mockito/mockito.dart';
import '../view_model/weather_view_model_test.mocks.dart';
import 'utils/device_size.dart';

Finder _findSvgImage(String image) {
  final finder = find.byWidgetPredicate((Widget widget) {
    if (widget is SvgPicture && widget.pictureProvider is ExactAssetPicture) {
      final exactAssetPictureProvider =
          widget.pictureProvider as ExactAssetPicture;
      return exactAssetPictureProvider.assetName == 'assets/images/$image.svg';
    }
    return false;
  });
  return finder;
}

final _defaultWeatherResult = WeatherResult(
  weatherCondition: WeatherCondition.sunny,
  maxTemperature: 0,
  minTemperature: 0,
  date: DateTime.now(),
);

void main() {
  setUp(setDisplaySize);
  tearDown(resetDisplaySize);

  final mockWeatherRepository = MockWeatherRepository();
  tearDown(() {
    reset(mockWeatherRepository);
  });

  late ProviderScope providerScope;

  setUp(() {
    providerScope = ProviderScope(
      overrides: [
        weatherRepositoryProvider.overrideWithValue(mockWeatherRepository),
      ],
      child: const MaterialApp(
        home: WeatherScreen(),
      ),
    );
  });

  testWidgets('初期状態で全てのWidgetが問題なく表示されていること', (tester) async {
    // Arrange
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: WeatherScreen())),
    );
    // Assert
    expect(find.byType(WeatherScreen), findsOneWidget);
    expect(find.byType(Placeholder), findsOneWidget);
    expect(find.byType(TextButton), findsNWidgets(2));
    expect(find.text('Close'), findsOneWidget);
    expect(find.text('Reload'), findsOneWidget);
  });

  testWidgets('特定の条件で、晴れの画像が表示されること', (tester) async {
    // Arrange
    const weatherCondition = WeatherCondition.sunny;
    final weatherResult = _defaultWeatherResult.copyWith(
      weatherCondition: weatherCondition,
    );
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) => Result.success(weatherResult),
    );
    await tester.pumpWidget(providerScope);
    // Act
    await tester.tap(find.text('Reload'));
    await tester.pumpAndSettle();
    // Assert
    expect(_findSvgImage(weatherCondition.name), findsOneWidget);
  });

  testWidgets('特定の条件で、天気予報画面に曇りの画像が表示されること', (tester) async {
    // Arrange
    const weatherCondition = WeatherCondition.cloudy;
    final weatherResult = _defaultWeatherResult.copyWith(
      weatherCondition: weatherCondition,
    );
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) => Result.success(weatherResult),
    );
    await tester.pumpWidget(providerScope);
    // Act
    await tester.tap(find.text('Reload'));
    await tester.pump();
    // Assert
    expect(_findSvgImage(weatherCondition.name), findsOneWidget);
  });

  testWidgets('特定の条件で、天気予報画面に雨の画像が表示されること', (tester) async {
    // Arrange
    const weatherCondition = WeatherCondition.rainy;
    final weatherResult = _defaultWeatherResult.copyWith(
      weatherCondition: weatherCondition,
    );
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) => Result.success(weatherResult),
    );
    await tester.pumpWidget(providerScope);
    // Act
    await tester.tap(find.text('Reload'));
    await tester.pump();
    // Assert
    expect(_findSvgImage(weatherCondition.name), findsOneWidget);
  });

  testWidgets('特定の条件で、天気予報画面に最高気温が表示されること', (tester) async {
    // Arrange
    const maxTemperature = 30;
    final weatherResult = _defaultWeatherResult.copyWith(
      maxTemperature: maxTemperature,
    );
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) => Result.success(weatherResult),
    );
    await tester.pumpWidget(providerScope);
    // Act
    await tester.tap(find.text('Reload'));
    await tester.pump();
    // Assert
    expect(find.text('$maxTemperature ℃'), findsOneWidget);
  });

  testWidgets('特定の条件で、天気予報画面に最低気温が表示されること', (tester) async {
    // Arrange
    const minTemperature = 15;
    final weatherResult = _defaultWeatherResult.copyWith(
      minTemperature: minTemperature,
    );
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) => Result.success(weatherResult),
    );
    await tester.pumpWidget(providerScope);
    // Act
    await tester.tap(find.text('Reload'));
    await tester.pump();
    // Assert
    expect(find.text('$minTemperature ℃'), findsOneWidget);
  });

  testWidgets('特定の条件で、天気予報画面にダイアログが表示され、特定のメッセージが表示されること', (tester) async {
    // Arrange
    when(mockWeatherRepository.getWeather(any)).thenAnswer(
      (_) => const Result.failure(ErrorMessage.unknown),
    );
    await tester.pumpWidget(providerScope);
    // Act
    await tester.tap(find.text('Reload'));
    await tester.pump();
    // Assert
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text(ErrorMessage.unknown), findsOneWidget);
  });
}
