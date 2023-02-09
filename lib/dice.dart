import 'package:flutter/material.dart';
import 'dart:math';

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);
  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice> {
  int left_dice = 1;
  int right_dice = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      left_dice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('assets/images/dice$left_dice.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      right_dice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('assets/images/dice$right_dice.png'))),
        ])
      ],
    );
  }
}
