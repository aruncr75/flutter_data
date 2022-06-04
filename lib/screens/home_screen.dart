import 'package:firstapp1/main.dart';
import 'package:firstapp1/screens/login_screen.dart';
import 'package:firstapp1/widgets/wappbar.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wAppBar,
      // appBar: AppBar(title: Text(name),),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: const Text("Home")),
          IconButton(
              onPressed: () {
                signOut(context);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      )),
    );  
  }

  signOut(BuildContext context) async{
    await sharedp.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return ScreenLogin();
    }), (route) => false);
  }
}
