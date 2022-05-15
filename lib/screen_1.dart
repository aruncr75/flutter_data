import 'package:firstapp1/screen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("page_$index"),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ScreenTwo(name: "page_$index");
                    }));
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 20),
        ));
  }
}
