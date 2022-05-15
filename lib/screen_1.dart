import 'package:firstapp1/screen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
            child: Column(
          children: [
            const Text("hello"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ScreenTwo();
                  }));
                },
                child: const Text(" Go to Screen 2"))
          ],
        )));
  }
}
