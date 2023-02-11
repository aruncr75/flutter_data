import 'package:firstapp1/screens/ScreenPage1/screen_page_1.dart';
import 'package:firstapp1/screens/ScreenPage2/screen_page_2.dart';
import 'package:firstapp1/screens/ScreenPage3/screen_page_3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  static final List<Widget> _widgetOptions = <Widget>[
    const ScreenPage1(),
    const ScreenPage2(),
    const ScreenPage3(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _selectedIndex,
          builder: (context, int value, child) =>
              _widgetOptions.elementAt(value),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Tab 3',
          ),
        ],
        currentIndex: _selectedIndex.value,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
