import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  final String text;
  const StyleText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 32.5,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
