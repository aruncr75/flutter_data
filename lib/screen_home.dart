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
            return ListTile(
                title: Text("Person$index"),
                subtitle: const Text("subTitle"),
                leading: const CircleAvatar(
                    backgroundImage: NetworkImage("https://kinsta.com/wp-content/uploads/2020/08/tiger-jpg.jpg")),
                    // backgroundImage: AssetImage("assets/images/mo (2).jpg")),
                trailing: Text("00:$index"));
          },
          separatorBuilder: (context, index) {
            // ignore: prefer_const_constructors
            return Divider();
          },
          itemCount: 100,
        )));
  }
}
