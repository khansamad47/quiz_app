import 'package:flutter/material.dart';
import 'package:challege_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple, Colors.pink]),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}
