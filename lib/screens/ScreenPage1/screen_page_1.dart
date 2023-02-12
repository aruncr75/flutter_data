import 'package:firstapp1/screens/Provider/theme_provider.dart';
import 'package:firstapp1/screens/ScreenPage1/screen_page_1_0.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenPage1 extends StatelessWidget {
  const ScreenPage1({super.key});

  @override
  Widget build(BuildContext context) {
     final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Page_1"),
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
            Text("Page_1", style: Theme.of(context).textTheme.headline5),
            ElevatedButton(onPressed: () {
               Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context){
              return const ScreenPage1_0();
            }));
            }, child: const Text("Click me")),
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
