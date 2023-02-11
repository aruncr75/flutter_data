import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  backgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(255, 255, 250, 250)),
    bodyText2: TextStyle(color: Color.fromARGB(255, 211, 196, 196)),
    headline5: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
  ),

//Elevatedbutton
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(125, 64, 70, 255)))),
);

final elevatedButtonTheme1 = ElevatedButtonThemeData(
  style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 243, 33, 33))),
);
