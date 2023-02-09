import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice1.png'))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice2.png'))),
      ],
    );
  }
}
