import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> difficulties = ["Easy ", "Hard"];
  final List<bool> _difficulties = [false, true];
  bool isHard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guessing Game"),
        backgroundColor: (isHard) ? Colors.red : Colors.green,
        centerTitle: true,
      ),
      body: Container(
        child: PageView.builder(
          itemCount: difficulties.length,
          onPageChanged: (value) {
            setState(() {
              isHard = _difficulties[value];
            });
          },
          itemBuilder: (context, index) => EasyOrHard(
              startRange: 0, endingRange: 50, isHard: _difficulties[index]),
        ),
      ),
    );
  }
}

class EasyOrHard extends StatefulWidget {
  int startRange = 0;
  int endingRange = 50;
  bool isHard;
  int input = 0;

  int tries = 0;
  EasyOrHard({
    Key? key,
    required this.startRange,
    required this.endingRange,
    required this.isHard,
  }) : super(key: key);

  @override
  _EasyOrHardState createState() => _EasyOrHardState();
}

class _EasyOrHardState extends State<EasyOrHard> {
  String output = "";
  int random = Random().nextInt(50);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Difficult : ${widget.isHard ? "Hard" : "Easy"}"),
                Text("Tries : ${widget.tries}"),
                Text(widget.isHard
                    ? ""
                    : 'Range : ${widget.startRange} to ${widget.endingRange}'),
                IconButton(
                  onPressed: () {
                    setState(() {
                      random = Random().nextInt(50);
                      widget.tries = 0;
                      output = "Your Game Has Been Restarted";
                    });
                  },
                  icon: const Icon(
                    Icons.replay,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Restart Game',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (text) {
                widget.input = int.parse(text);
              },
            ),
            TextButton(
              onPressed: () {
                if (widget.tries < 3) {
                  output = (widget.input == random)
                      ? "Your input Matched"
                      : "Your input Not Matched";
                  print(random);
                  setState(
                    () {
                      widget.tries++;
                    },
                  );
                } else {
                  showDialog<String>(
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Action Rejected'),
                      content: const Text(
                          'You have done your all tries you have to restart the game.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                    context: context,
                  );
                }
              },
              child: const Text(
                "Guess",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => (widget.isHard) ? Colors.red : Colors.green,
                ),
                padding: MaterialStateProperty.resolveWith(
                    (states) => const EdgeInsets.only(left: 100, right: 100)),
              ),
            ),
            Text(output),
          ],
        ),
      ),
    );
  }
}
