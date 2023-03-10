import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('As Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: AskMe(),
      ),
    ),
  );
}

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int answer = 1;

  void changeAnswer() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeAnswer();
              },
              child: Image.asset('images/ball$answer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
