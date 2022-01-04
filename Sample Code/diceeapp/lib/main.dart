import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.grey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var left_image = Random().nextInt(5) + 1;
  var right_image = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  left_image = Random().nextInt(5) + 1;
                });

                print('Value of Variable $left_image');
              },
              child: Image.asset('images/dice$left_image.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  right_image = Random().nextInt(5) + 1;
                });

                print('Value of Variable $right_image');
              },
              child: Image.asset('images/dice$right_image.png'),
            ),
          ),
        ],
      ),
    );
  }
}
