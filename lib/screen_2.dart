import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
 

   const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(name),),
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: Center(
            child: Column(
        children: [
            const Text('value is present'),
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
