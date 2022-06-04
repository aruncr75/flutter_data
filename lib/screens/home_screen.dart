import 'package:firstapp1/main.dart';
import 'package:firstapp1/screens/login_screen.dart';
import 'package:firstapp1/widgets/wappbar.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ValueNotifier<int> _counter = ValueNotifier(0);

  void _incrementCounter() {
    _counter.value = _counter.value + 1;
  }

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
          Center(
              child: ValueListenableBuilder(
                  valueListenable: _counter,
                  builder: (BuildContext context, int newValue, Widget? child) {
                    return Text(newValue.toString());
                  })),
          IconButton(
              onPressed: () {
                signOut(context);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showBottomSheet(context);
      }),
    );
  }

  signOut(BuildContext context) async {
    await sharedp.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return ScreenLogin();
    }), (route) => false);
  }

  Future<void> showBottomSheet(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (ctx1) {
          return Container(
            width: double.infinity,
            height: 400,
            color: Colors.orange,
          );
        });
  }
}
