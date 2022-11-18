import 'package:flutter/material.dart';

class TemperatureButton extends StatelessWidget {
  const TemperatureButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
