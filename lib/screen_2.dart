import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: Column(
        children: [
          const Text("SecondScreen"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();  
              },
              child: const Text('Back'))
        ],
      )),
    );
  }
}
