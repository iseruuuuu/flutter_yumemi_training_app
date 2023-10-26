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

class _WeatherTestScreen extends ConsumerWidget {
  const _WeatherTestScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: WeatherScreen(),
    );
  }
}

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

MockWeatherRepository createMockWeatherRepository({
  WeatherCondition weatherCondition = WeatherCondition.sunny,
  int maxTemperature = 0,
  int minTemperature = 0,
}) {
  final mockWeatherRepository = MockWeatherRepository();
  final weatherResult = WeatherResult(
    weatherCondition: weatherCondition,
    maxTemperature: maxTemperature,
    minTemperature: minTemperature,
    date: DateTime.now(),
  );
  when(mockWeatherRepository.getWeather(any)).thenAnswer(
    (_) => Result.success(weatherResult),
  );
  return mockWeatherRepository;
}

MockWeatherRepository createFailureMockWeatherRepository({
  required String errorMessage,
}) {
  final mockWeatherRepository = MockWeatherRepository();
  when(mockWeatherRepository.getWeather(any)).thenAnswer(
    (_) => Result.failure(errorMessage),
  );
  return mockWeatherRepository;
}

void main() {
  setUp(setDisplaySize);
  tearDown(resetDisplaySize);

  testWidgets('初期状態で全てのWidgetが問題なく表示されていること', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: _WeatherTestScreen()));
    expect(find.byType(WeatherScreen), findsOneWidget);
    expect(find.byType(Placeholder), findsOneWidget);
    expect(find.byType(TextButton), findsNWidgets(2));
    expect(find.text('Close'), findsOneWidget);
    expect(find.text('Reload'), findsOneWidget);
  });

  testWidgets('特定の条件で、晴れの画像が表示されること', (tester) async {
    const weather = WeatherCondition.sunny;
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          weatherRepositoryProvider.overrideWithValue(
            createMockWeatherRepository(),
          ),
        ],
        child: const _WeatherTestScreen(),
      ),
    );

    await tester.tap(find.text('Reload'));
    await tester.pumpAndSettle();
    expect(_findSvgImage(weather.name), findsOneWidget);
  });

  testWidgets('特定の条件で、天気予報画面に曇りの画像が表示されること', (tester) async {
    const weather = WeatherCondition.cloudy;
    final mockWeatherViewModel =
        createMockWeatherRepository(weatherCondition: weather);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          weatherRepositoryProvider.overrideWithValue(
            mockWeatherViewModel,
          ),
        ],
        child: const _WeatherTestScreen(),
      ),
    );
    await tester.tap(find.text('Reload'));
    await tester.pump();
    expect(_findSvgImage(weather.name), findsOneWidget);
  });
  testWidgets('特定の条件で、天気予報画面に雨の画像が表示されること', (tester) async {
    const weather = WeatherCondition.rainy;
    final mockWeatherViewModel =
        createMockWeatherRepository(weatherCondition: weather);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          weatherRepositoryProvider.overrideWithValue(
            mockWeatherViewModel,
          ),
        ],
        child: const _WeatherTestScreen(),
      ),
    );

    await tester.tap(find.text('Reload'));
    await tester.pump();
    expect(_findSvgImage(weather.name), findsOneWidget);
  });
  testWidgets('特定の条件で、天気予報画面に最高気温が表示されること', (tester) async {
    const maxTemperature = 30;
    final mockWeatherViewModel =
        createMockWeatherRepository(maxTemperature: maxTemperature);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          weatherRepositoryProvider.overrideWithValue(
            mockWeatherViewModel,
          ),
        ],
        child: const _WeatherTestScreen(),
      ),
    );
    await tester.tap(find.text('Reload'));
    await tester.pump();
    expect(find.text('$maxTemperature ℃'), findsOneWidget);
  });
  testWidgets('特定の条件で、天気予報画面に最低気温が表示されること', (tester) async {
    const minTemperature = 15;
    final mockWeatherViewModel =
        createMockWeatherRepository(minTemperature: minTemperature);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          weatherRepositoryProvider.overrideWithValue(
            mockWeatherViewModel,
          ),
        ],
        child: const _WeatherTestScreen(),
      ),
    );
    await tester.tap(find.text('Reload'));
    await tester.pump();
    expect(find.text('$minTemperature ℃'), findsOneWidget);
  });
  testWidgets('特定の条件で、天気予報画面にダイアログが表示され、特定のメッセージが表示されること', (tester) async {
    final mockWeatherViewModel = createFailureMockWeatherRepository(
      errorMessage: ErrorMessage.unknown,
    );
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          weatherRepositoryProvider.overrideWithValue(
            mockWeatherViewModel,
          ),
        ],
        child: const _WeatherTestScreen(),
      ),
    );
    await tester.tap(find.text('Reload'));
    await tester.pump();
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text('予期せぬ不具合が発生しました。'), findsOneWidget);
    expect(find.text(ErrorMessage.unknown), findsOneWidget);
  });
}
