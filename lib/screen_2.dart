import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;

  const ScreenTwo({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: Center(
            child: Column(
        children: [
            Text(name),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Back'))
        ],
      ),
          )),
    );
  }
}
