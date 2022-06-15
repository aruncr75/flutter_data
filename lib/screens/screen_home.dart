import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var date = new DateTime(2018, 1, 13);
    var _currentDate = DateTime.now();
    var date1 = DateTime.parse("2020-05-21T05:26:18.651Z");
    var date2 = DateTime.parse("2020-05-21T05:26:18.651Z");
    final difference = date2.difference(date1).inDays;
    print(difference);
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(children: [
            const TabBar(tabs: [
              Tab(child: Text("Home", style: TextStyle(color: Colors.black))),
              Tab(
                child: Text(
                  "Serach",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(  
                  "Accounts",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Time Difference",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ]),
            Expanded(
              child: TabBarView(children: [
                Container(child: const Center(child: Text("Home"))),
                Container(child: const Center(child: Text("Search"))),
                Container(child: Center(child: Text("Account"))),
                Container(child: Center(child: Text("${difference}",style: TextStyle(color: difference >3 ? Colors.red:Colors.blue),)))
              ]),
            )
          ]),
        ));
  }
}
