import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF1B103C),
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontFamily: 'Pixelar',
              fontSize: 22.0,
            ),
          ),
          backgroundColor: Color(0xFF1B103C),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
          padding: EdgeInsets.all(0.0),
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() {
              ballNumber = Random.secure().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
