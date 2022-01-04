import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const StudentCard(),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          shape: null,
          child: Container(
            height: 700,
            width: 500,
            color: Colors.blue.shade900,
            child: Column(
              children: [
                const Text(
                  "TAHIR SIDDIQUE",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  " ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "CIIT/FA18-BSE-036/VHR",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  " ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "CNIC : 36603-0534923-9",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  " ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Center(
                    widthFactor: 20,
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              "                           DOB : 01/01/2002",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text("                 ",
                                textAlign: TextAlign.center),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "Validity : 01/07/2022",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )),
                const Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  height: 300,
                  width: 500,
                  color: Colors.white,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 180,
                        height: 230,
                        color: Colors.blue.shade900,
                        child: Image.asset(
                          "images/profile.jpg",
                          height: 200,
                          width: 300,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                                "images/logo.jpg",
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: const [Text("             ")],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: const [
                                Text(
                                  "Department Of Computer Science",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Comsats University",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Islamabad Vehari Campus",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
