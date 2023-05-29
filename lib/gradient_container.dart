import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  final List<Color> gradientColor;

  const GradientContainer({super.key, required this.gradientColor});

  GradientContainer.blue({super.key})
      : gradientColor = [
          const Color.fromARGB(255, 3, 98, 175),
          Colors.blue,
        ];

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var activeImage = 'assets/images/dice-1.png';

  num randomInt = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: widget.gradientColor,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(activeImage),
            width: 100.00,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                randomInt = Random().nextInt(6) + 1;
                activeImage = 'assets/images/dice-${randomInt.toString()}.png';
              });
              
            },
            child: const Text('RollDice'),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 19.00,
              ),
            ),
          ),
        ],
      ) //StyleText("Hello"),
          ),
    );
  }
}
