import 'package:firstapp1/screens/home/screen_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
     SchedulerBinding.instance.addPostFrameCallback((_) {
    navigate(context: context);
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(child: Center(child: Text("Splash Screen"))),
    );
  }
}

Future<void> navigate({context}) async {
  await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => ScreenHome()));
  }
