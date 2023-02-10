import 'package:firstapp1/screens/Provider/theme_provider.dart';
import 'package:firstapp1/screens/ScreenHome/screen_home.dart';
import 'package:firstapp1/screens/Theme/dark_theme.dart';
import 'package:firstapp1/screens/Theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: const MaterialAppWithTheme(),
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(
          create: (_) => ThemeNotifier(ThemeData.light()),
        ),
      ],
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<ThemeNotifier>(
  builder: (context, themeNotifier, child) {
    final themeMode = themeNotifier.getTheme() == lightTheme ? ThemeMode.light : ThemeMode.dark;

    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: const MyHomePage(),
    );
  },
);
  }
}
