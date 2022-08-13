import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:geolocator/geolocator.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            title: const Text('Animate Slowly'),
            value: timeDilation != 1.0,
            onChanged: (bool? value) {
              setState(() {
                timeDilation = value! ? 3.0 : 1.0;
                print(value);
              });
            },
            secondary: const Icon(Icons.hourglass_empty),
          ),
          ElevatedButton(
            child: Text(
              "Click me",
            ),
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
