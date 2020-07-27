import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      routes: {
        '/': (ctx) => MainScreenPage(),
      },
    );
  }
}

class MainScreenPage extends StatefulWidget {
  @override
  _MainScreenPage createState() => _MainScreenPage();
}

class _MainScreenPage extends State<MainScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Change background'),
          backgroundColor: Colors.blue,
        ),
        body: _MainContent());
  }
}

class _MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<_MainContent> {
  var _bgColor = Color.fromARGB(255, 255, 255, 255);

  void _updateBgColor() {
    setState(() {
      var random = Random();
      _bgColor = Color.fromARGB(
          255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _updateBgColor();
        },
        child: SizedBox.expand(
          child: Container(
            color: _bgColor,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Hey there",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }
}
