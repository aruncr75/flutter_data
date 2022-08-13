
import 'package:firstapp1/screens/persmission.dart';
import 'package:firstapp1/screens/screen_one.dart';
import 'package:firstapp1/screens/screen_three.dart';
import 'package:firstapp1/screens/screen_two.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Scanner Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenPermission(),
    );
  }
}
