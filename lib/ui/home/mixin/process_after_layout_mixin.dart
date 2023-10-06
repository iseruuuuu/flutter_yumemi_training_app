import 'package:flutter/material.dart';
import 'package:flutter_training/ui/home/home_screen.dart';

mixin ProcessAfterLayoutMixin on State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.endOfFrame.then((_) => loadScreen());
  }

  void loadScreen() {}
}