import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int cur = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Text('manak'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Text('donak'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('chukuli'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
