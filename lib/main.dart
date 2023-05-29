import 'package:flutter/material.dart';
import 'package:flutter_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(gradientColor: [
          Color.fromARGB(255, 3, 98, 175),
          Colors.blue,
        ]),
      ),
    ),
  );
}
