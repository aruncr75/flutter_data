import 'package:flutter/material.dart';
import 'package:location/location.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: Text(
          "Click me",
        ),
        onPressed: () {
          
        },
      ),
    ));
  }
}
