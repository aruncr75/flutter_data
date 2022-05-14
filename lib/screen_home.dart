import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _counter = _counter + 1;
          setState(() {
            _counter;
          });
        },
      ),
      // body: SafeArea(child: Center(child: Text(_counter.toString()))),
      body: SafeArea(child: Center(child:DisplayText(counterText: _counter)
      )),
    );
  }
}

class DisplayText extends StatelessWidget {
  final int counterText;

  const DisplayText({Key? key, required this.counterText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(counterText.toString());
  }
}
