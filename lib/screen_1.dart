// ignore_for_file: avoid_print

import 'package:firstapp1/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);

  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
            child: Column(children: [
          TextFormField(
            controller: _textController,
          ),
          ElevatedButton(
              onPressed: () {
                saveDataToStotage();
                print(_textController.text);
              },
              child: const Text('Save Value')),
        ])));
  }

  Future<void> saveDataToStotage() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString('save_value', _textController.text);
  }


  Future<void> getSavedData(BuildContext context) async {
  final sharedpref = await SharedPreferences.getInstance();
  final savedValue = sharedpref.getString("save_value");
  if (savedValue != null) {
    print(savedValue);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const ScreenTwo();
    }));
  }
}
}


