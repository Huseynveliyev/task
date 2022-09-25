import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, required this.bottomNav});
  final ValueNotifier<int> bottomNav;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bottomNav,
        builder: (context, value, widget) {
          return BottomNavigationBar(
              elevation: 4,
              currentIndex: bottomNav.value,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (value) {
                bottomNav.value = value;
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), label: ""),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.chart_bar), label: ""),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: ""),
              ]);
        });
  }
}
