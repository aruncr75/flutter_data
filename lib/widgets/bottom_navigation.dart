import 'package:firstapp1/screens/home/screen_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomNavigationBar extends StatelessWidget {
  const HomeScreenBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:ScreenHome.selectedIndexNotifier ,builder: (BuildContext context, int updatedIndex, Widget? child){
        return BottomNavigationBar(
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              ScreenHome.selectedIndexNotifier.value = newIndex;
            },
            items: const[
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Category", icon: Icon(Icons.category)),
            ],
          );
      },
        
    );  
  }
}
