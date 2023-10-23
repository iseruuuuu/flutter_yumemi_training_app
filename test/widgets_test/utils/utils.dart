import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

final binding = TestWidgetsFlutterBinding.ensureInitialized();

/// デフォルトで iPhone14 Pro Max(430px × 932px)のサイズを指定
void setDisplaySize({Size size = const Size(430, 932)}) {
  // 画面サイズの設定
  binding.platformDispatcher.implicitView!.physicalSize = size;
  // デバイスのピクセル比の設定
  binding.platformDispatcher.implicitView!.devicePixelRatio = 1.0;
}

/// 表示サイズとデバイスのピクセル比をリセット
void resetDisplaySize() {
  // 画面サイズのリセット
  binding.platformDispatcher.implicitView!.resetPhysicalSize();
  // ピクセル比のリセット
  binding.platformDispatcher.implicitView!.resetDevicePixelRatio();
}
