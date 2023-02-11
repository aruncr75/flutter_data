import 'package:firstapp1/screens/Provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class ScreenPage1_0 extends StatelessWidget {
  const ScreenPage1_0({super.key});

  @override
  Widget build(BuildContext context) {
     final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Page_1_0"),
        actions: <Widget>[
          Switch(
            onChanged: (value) {
              themeNotifier.toggleTheme(value);
            },
            value: themeNotifier.themeMode == ThemeMode.dark,
          ),
          IconButton(
            icon: themeNotifier.themeMode == ThemeMode.dark
                ? const Icon(Icons.wb_sunny)
                : const Icon(Icons.brightness_3),
            onPressed: () {
              themeNotifier
                  .toggleTheme(themeNotifier.themeMode == ThemeMode.light);
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page_1_0", style: Theme.of(context).textTheme.headline5),
            ElevatedButton(onPressed: () {}, child: const Text("Click me")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // toggle between light and dark theme
          themeNotifier.toggleTheme(
       themeNotifier.themeMode == ThemeMode.light);
        },
        child: const Icon(Icons.wb_sunny),
      ),
    );
  }
}
