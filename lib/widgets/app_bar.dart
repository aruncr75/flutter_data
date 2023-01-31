import 'package:firstapp1/theme/theme_manager.dart';
import 'package:flutter/material.dart';

ThemeManager _themeManager = ThemeManager();
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue) {
          _themeManager.toggleTheme(newValue);
        })],

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
