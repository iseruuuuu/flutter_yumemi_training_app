import 'package:flutter/material.dart';

class TemperatureButton extends StatelessWidget {
  const TemperatureButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
