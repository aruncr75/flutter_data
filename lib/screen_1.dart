import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
            child: Column(children: [
          TextFormField(),  
          ElevatedButton(onPressed: () {}, child: const Text('Save Value')),
        ])));
  }
}
