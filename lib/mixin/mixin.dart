import 'package:flutter/material.dart';
import 'package:flutter_training/screen/home_screen.dart';

mixin Mixin on State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.endOfFrame.then((_) => loadScreen());
  }

  void loadScreen() {}
}
