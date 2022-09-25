import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui_color.dart';

class UITheme {
  UITheme._();
  static ThemeData app = ThemeData(
    primaryColor: UIColor.green,
    fontFamily: "Nunito",
    scaffoldBackgroundColor: UIColor.primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: UIColor.clear,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: UIColor.clear, statusBarIconBrightness: Brightness.dark),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: UIColor.green,
      showUnselectedLabels: true,
    ),
  );
}
