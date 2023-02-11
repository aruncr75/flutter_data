import 'package:firstapp1/screens/ScreenHome/screen_home.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // goToLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // ignore: todo
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Center(
              child: Text(
        "Splash Screen",
      ))),
    );
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> goToLogin() async {
    await Future.delayed(const Duration(milliseconds: 100));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
