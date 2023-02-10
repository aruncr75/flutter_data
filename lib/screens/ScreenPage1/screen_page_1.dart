import 'package:flutter/material.dart';

class ScreenPage1 extends StatelessWidget {
  const ScreenPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Page_1"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page_1", style: Theme.of(context).textTheme.headline5),
            ElevatedButton(onPressed: () {}, child: const Text("Click me")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // toggle between light and dark theme
        },
        child: const Icon(Icons.wb_sunny),
      ),
    );
  }
}
