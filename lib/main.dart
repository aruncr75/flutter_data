import 'package:firstapp1/screens/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedp;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedp = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ScreenOne(),
    );
  }
}
