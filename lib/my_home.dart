import 'package:flutter/material.dart';
import 'package:my_dices/dice.dart';

// ignore: camel_case_types
class my_home extends StatelessWidget {
  const my_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: const dice(),
    );
  }
}
