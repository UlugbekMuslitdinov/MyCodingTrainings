import 'package:flutter/material.dart';

// The main function
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[700],
          appBar: AppBar(
            title: const Text("I am rich"),
            backgroundColor: Colors.blueGrey[900],
            centerTitle: true,
          ),
          body: const Center(
              child: Image(image: AssetImage('images/diamonds.png')))),
    ),
  );
}
