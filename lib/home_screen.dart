// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _typeSomethingController = TextEditingController();
  final String _text = "nothing";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _typeSomethingController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Type Something"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _typeSomethingController;
                  });
                  print(_typeSomethingController.text);
                },
                child: const Text("Click Me")),
            Text(_typeSomethingController.text)
          ],
        ),
      )),
    );
  }
}
