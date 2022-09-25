import 'package:flutter/material.dart';
import 'package:frazex_intern_task/presentation/pages/main/main_page.dart';
import 'package:frazex_intern_task/presentation/pages/search/search_page.dart';

import 'route_name.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.main:
        return push(const MainPage());
      case RouteName.search:
        return push(const SearchPage());
      default:
        return push(const MainPage());
    }
  }

  static push(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
