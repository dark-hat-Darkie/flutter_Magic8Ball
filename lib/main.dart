import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int selectedBall = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Magic 8 Ball'),
        ),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'ASK ME ANYTHING',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    selectedBall = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$selectedBall.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
