import 'package:firstapp1/screens/ScreenHome/screen_home.dart';
import 'package:flutter/material.dart';
// adb connect 192.168.43.1:5555

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenHome(),
    );
  }
}


