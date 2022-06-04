import 'package:firstapp1/screens/home_screen.dart';
import 'package:firstapp1/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    LoginCheck(context);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Splash Screen ",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 7, 7)),
            )
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  LoginCheck(BuildContext context)async {
   final chcekLogin =await sharedp.getString('name');
    if (chcekLogin != null) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return ScreenHome();
        },
      ));
    } else {
      gotoLogin(context);
    }
  }

  Future<void> gotoLogin(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 100));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ScreenLogin()));
  }
}
