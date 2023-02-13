import 'package:flutter/material.dart';
import 'dart:math';

// ignore: camel_case_types
class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _diceState createState() => _diceState();
}

// ignore: camel_case_types
class _diceState extends State<dice> {
  // ignore: non_constant_identifier_names
  int left_dice = 1;
  // ignore: non_constant_identifier_names
  int right_dice = 1;
  void diceOne() {
    setState(() {
      left_dice = Random().nextInt(6) + 1;
      right_dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: <Widget>[
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/dice$left_dice.png'))),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/dice$right_dice.png'))),
        ]),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                diceOne();
              },
              child: const Text(
                "Lanza el dado",
                style: TextStyle(fontSize: 40),
              )),
        )
      ],
    );
  }
}
