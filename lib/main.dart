import 'package:firstapp1/screen_1.dart';
import 'package:firstapp1/screen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const ScreenOne(),
      routes: {
        "screen_1": (context) {
          return const ScreenOne();
        },
        "screen_2": (context) {
          return const ScreenTwo();
        }
      },
    );
  }
}
