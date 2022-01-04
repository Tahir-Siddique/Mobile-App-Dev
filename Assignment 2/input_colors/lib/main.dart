import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:input_colors/input_class.dart';

void main() {
  runApp(const InputColorsAndOutput());
}

class InputColorsAndOutput extends StatefulWidget {
  const InputColorsAndOutput({Key? key}) : super(key: key);
  @override
  InputColorsAndOutputState createState() => InputColorsAndOutputState();
}

class InputColorsAndOutputState extends State<InputColorsAndOutput> {
  List<Expanded> listOfInputs = [];
  String colorsDropdownValue = 'Red';
  String trackValue = '1';
  bool isOnInput = true;
  List<String> listColorsDropdownValue = [
    "Red",
    "Orange",
    "Yellow",
    "Green",
    "Teal",
    "Blue",
    "Purple"
  ];
  List<String> listTrackValue = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
  ];
  void playSound(String soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Color toColor(String color) {
    if (color == "red") {
      return Colors.red;
    }
    if (color == "orange") {
      return Colors.orange;
    }
    if (color == "yellow") {
      return Colors.yellow;
    }
    if (color == "green") {
      return Colors.green;
    }
    if (color == "teal") {
      return Colors.teal;
    }
    if (color == "blue") {
      return Colors.blue;
    }
    if (color == "purple") {
      return Colors.purple;
    }
    return Colors.red;
  }

  Expanded buildKey(Color color, String soundNumber) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: SafeArea(
            child: isOnInput
                ? SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DropdownButton<String>(
                          value: colorsDropdownValue,
                          elevation: 16,
                          dropdownColor: Colors.black,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          icon: const Icon(Icons.arrow_drop_down_circle),
                          items: listColorsDropdownValue
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(
                              () {
                                colorsDropdownValue = newValue!;
                              },
                            );
                          },
                        ),
                        DropdownButton<String>(
                          value: trackValue,
                          elevation: 16,
                          dropdownColor: Colors.black,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          icon: const Icon(Icons.arrow_drop_down_circle),
                          items: listTrackValue
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(
                              () {
                                trackValue = newValue!;
                              },
                            );
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            listOfInputs.add(buildKey(
                                toColor(colorsDropdownValue.toLowerCase()),
                                trackValue));
                            if (listTrackValue.length > 1) {
                              listTrackValue
                                  .removeWhere((str) => str == trackValue);
                            }
                            trackValue = listTrackValue[
                                Random().nextInt(listTrackValue.length)];
                            setState(() {
                              if (listOfInputs.length == 7) {
                                isOnInput = false;
                              }
                            });
                          },
                          child: const Text(
                            "Add",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                        )
                      ],
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: listOfInputs,
                  ),
          ),
        ),
      ),
    );
  }
}
