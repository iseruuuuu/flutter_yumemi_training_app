import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_training/main.dart';

void main() {
  testWidgets(
    'Counter increments smoke test',
    (tester) async {
      await tester.pumpWidget(const MyApp());
    },
  );
}
