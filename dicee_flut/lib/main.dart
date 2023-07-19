import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              splashColor: Colors.transparent,
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              splashColor: Colors.red,
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceFace() {
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
  }
}
