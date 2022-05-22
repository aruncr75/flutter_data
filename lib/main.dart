import 'package:firebase_core/firebase_core.dart';
import 'package:firstapp1/screens/home.dart';
import 'package:firstapp1/screens/login.dart';
import 'package:flutter/material.dart';
// adb connect 192.168.43.1:5555


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: ScreenHome(),
    );
  }
}



