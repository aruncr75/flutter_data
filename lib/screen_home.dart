import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: SafeArea(
            child: ListView.separated(
      itemBuilder: (context, index) {
        return Text(index.toString());
      },
      separatorBuilder: (context, index) {
        // ignore: prefer_const_constructors
        return Divider();
      },
      itemCount: 100,
    )));
  }
}
