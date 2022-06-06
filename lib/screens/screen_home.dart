import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(children: [
            TabBar(tabs: [Tab(
            child: Text("Home",style: TextStyle(color: Colors.black))),
            Tab(child: Text("Serach",style: TextStyle(color: Colors.black),),),
            Tab(child: Text("Accounts",style: TextStyle(color: Colors.black),),)
            ]
            ),Expanded(
              child: TabBarView(children: [Container(child: Center(child: Text("Home"))),
              Container(child: Center(child: Text("Search"))),
              Container(child: Center(child: Text("Account")))]),
            )
            ]
            ),
        ));
  }
}

