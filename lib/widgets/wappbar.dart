
import 'package:flutter/material.dart';

PreferredSizeWidget? wAppBar =
 AppBar(title: Center(child: Text("Home")));



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
