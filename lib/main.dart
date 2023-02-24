// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

Random randNum = Random();
int image = 1;
void imageChanger() {
  image = randNum.nextInt(5) + 1;
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 96, 244),
        title: Text("Add Me Anything!"),
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  imageChanger();
                });
              },
              child: Image.asset("images/ball$image.png"))),
    );
  }
}
