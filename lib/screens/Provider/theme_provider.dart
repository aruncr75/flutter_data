import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  // ThemeMode _themeMode =
  //     WidgetsBinding.instance.window.platformBrightness == Brightness.dark
  //         ? ThemeMode.dark
  //         : ThemeMode.light;
  get themeMode => _themeMode;
  toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
