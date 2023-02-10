import 'package:firstapp1/screens/Provider/theme_provider.dart';
import 'package:firstapp1/screens/ScreenPage1/screen_page_1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey  ,
      appBar: AppBar(
        title: const Text("Dark and Light Theme"),
        actions: <Widget>[
          IconButton(
            icon: themeNotifier.isDark
                ? const Icon(Icons.wb_sunny)
                : const Icon(Icons.brightness_3),
            onPressed: () {
              themeNotifier.isDark = !themeNotifier.isDark;
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const ScreenPage1();
            }));
          },
          child: const Text("to page1"),
        ),
      ),
    );
  }
}
