import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: <Widget>[
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/dice1.png'))),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/dice2.png'))),
        ])
      ],
    );
  }
}
