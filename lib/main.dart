import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firstapp1/screens/firebase_notification.dart';
import 'package:flutter/material.dart';
// adb connect 192.168.43.1:5555

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenNotification(),
    );
  }
}

Future<void> backgroundHandler(RemoteMessage message) async {
  print("this Message is from Backgroung");
  print("${message.notification!.title}");
  print("${message.notification!.body}");
}
