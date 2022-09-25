import 'package:flutter/material.dart';

class Navigation {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static push(String routeName) async {
    return await navigatorKey.currentState?.pushNamed(routeName);
  }

  static pop() {
    return navigatorKey.currentState?.pop();
  }
}
