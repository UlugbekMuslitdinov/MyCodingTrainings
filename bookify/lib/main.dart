import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('Bookify'),
      backgroundColor: Colors.blue[900],
    ),
    body: const Center(
      child: Image(
        image: AssetImage('images/pexels-photo-3640930.jpeg'),
      ),
    ),
    backgroundColor: Colors.grey,
  )));
}
