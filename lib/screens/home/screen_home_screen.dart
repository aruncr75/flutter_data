import 'package:firstapp1/screens/category/screen_home_screen.dart';
import 'package:firstapp1/screens/transactions/screen_transactions.dart';
import 'package:firstapp1/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = [
    ScreenCategory(),
    SreenTransactions(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: HomeScreenBottomNavigationBar(),
      // backgroundColor: Colors.blue,
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: selectedIndexNotifier,
              builder: (BuildContext context, int updatedindex, Widget? child) {
                return _pages[updatedindex];
              })),
    );
  }
}
