import 'package:firstapp1/screens/accounts_screen.dart';
import 'package:firstapp1/screens/home_search.dart';
import 'package:firstapp1/screens/screen_home.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int _currentSelectedIndex = 0;
  final _pages =[ScreenHome(),
       screenSearch(),
   ScreenAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _pages[0],
      body: _pages[_currentSelectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
          currentIndex: _currentSelectedIndex,  
          onTap: (newindex) {
            setState(() {
               _currentSelectedIndex = newindex;
            });
           
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
          ]),
    );
  }
}
