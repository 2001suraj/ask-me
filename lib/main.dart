import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int changer = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask me any thing',
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text(
              "Ask me any thing",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.tealAccent,
          ),
          body: Center(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changer = Random().nextInt(5) + 1;
                });               
              },
              child: Image(image: AssetImage('images/ball$changer.png')),
            ),
          )),
    );
  }
}
