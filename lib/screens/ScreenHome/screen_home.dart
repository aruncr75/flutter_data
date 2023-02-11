import 'package:firstapp1/screens/ScreenPage1/screen_page_1.dart';
import 'package:firstapp1/screens/ScreenPage2/screen_page_2.dart';
import 'package:firstapp1/screens/ScreenPage3/screen_page_3.dart';
import 'package:flutter/cupertino.dart';
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
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ScreenPage1(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ScreenPage2(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ScreenPage3(),
              );
            });
          default: return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ScreenPage1(),
              );
            });
        }
      },
    );
  }
}
