import 'package:firstapp1/screens/Provider/theme_provider.dart';
import 'package:firstapp1/screens/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenPage2 extends StatelessWidget {
  const ScreenPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: CustomAppBar(title: const Text("Page_2")),
      body: Center(
        child: Column(
          children: [
            Text("Page_2", style: Theme.of(context).textTheme.headline5),
            ElevatedButton(onPressed: () {}, child: const Text("Click me")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // toggle between light and dark theme
          themeNotifier.toggleTheme(themeNotifier.themeMode == ThemeMode.light);
        },
        child: const Icon(Icons.wb_sunny),
      ),
    );
  }
}
