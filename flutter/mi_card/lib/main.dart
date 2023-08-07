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
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/61158544?v=4'),
            ),
            Text(
              'Ulugbek',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontFamily: 'Source Sans',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 150.0,
              height: 20.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                    '+998 97 775 18 41',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text(
                    'ulugbekmuslitdinov@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
