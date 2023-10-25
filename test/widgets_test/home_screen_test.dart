import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/main.dart';
import 'package:flutter_training/view/home_screen.dart';
import 'package:flutter_training/view/weather_screen.dart';

import 'utils/utils.dart';

void main() {
  setUp(setDisplaySize);
  tearDown(resetDisplaySize);

  testWidgets(
    'Automatic transition from HomeScreen to WeatherScreen after 500ms.',
    (tester) async {
      await tester.pumpWidget(const ProviderScope(child: MyApp()));
      expect(find.byType(HomeScreen), findsOneWidget);
      // 500m秒後の遅延実行する
      await tester.pumpAndSettle(const Duration(milliseconds: 500));
      expect(find.byType(HomeScreen), findsNothing);
      expect(find.byType(WeatherScreen), findsOneWidget);
    },
  );
}
