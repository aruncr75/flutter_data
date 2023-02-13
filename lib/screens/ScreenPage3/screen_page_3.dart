import 'package:firstapp1/screens/Provider/theme_provider.dart';
import 'package:firstapp1/screens/ScreenPage3/screen_page_3_0.dart';
import 'package:firstapp1/screens/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenPage3 extends StatelessWidget {
  const ScreenPage3({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: CustomAppBar(title: const Text("Page_3")),
      body: Center(
        child: Column(
          children: [
            Text("Page_3", style: Theme.of(context).textTheme.headline5),
            ElevatedButton(onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(maintainState:false,builder: (context){
              return const ScreenPage3_0();
            }));
            }, child: const Text("Click me")),
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
