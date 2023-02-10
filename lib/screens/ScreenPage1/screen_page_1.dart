import 'package:firstapp1/screens/Provider/theme_provider.dart';
import 'package:firstapp1/screens/Theme/dark_theme.dart';
import 'package:firstapp1/screens/Theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenPage1 extends StatelessWidget {
  const ScreenPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Column(
          children: [
            ButtonTheme(
              child: ElevatedButton(onPressed: () {}, child: const Text("Click me"))),
            Text("Page 1", style: Theme.of(context).textTheme.headline5),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // toggle between light and dark theme

          ThemeData theme =
              themeNotifier.getTheme().brightness == Brightness.light
                  ? darkTheme
                  : lightTheme;
          themeNotifier.setTheme(theme);
        },
        child: const Icon(Icons.wb_sunny),
      ),
    );
  }
}
