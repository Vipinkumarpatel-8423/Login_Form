// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo_pro/HomePage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo Page",
      home: Scaffold(
          // backgroundColor: Colors.limeAccent,
          appBar: AppBar(
            title: Text(
              "Demo Site",
              style: TextStyle(color: Colors.white70),
            ),
          ),
          body: HomePage()),
    );
  }
}
