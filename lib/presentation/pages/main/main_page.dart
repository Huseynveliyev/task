import 'package:flutter/material.dart';
import 'package:frazex_intern_task/presentation/components/base/bottom_nav.dart';
import 'package:frazex_intern_task/presentation/components/button/notification_button.dart';
import 'package:frazex_intern_task/presentation/pages/main/tabs/home_screen/home_screen.dart';
import 'package:frazex_intern_task/presentation/pages/main/tabs/profile_screen.dart';
import 'package:frazex_intern_task/presentation/pages/main/tabs/stats_screen.dart';
import 'package:frazex_intern_task/presentation/pages/main/tabs/store_screen.dart';
import 'package:frazex_intern_task/presentation/theme/ui_color.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreen(),
      const StoreScreen(),
      const StatsScreen(),
      const ProfileScreen(),
    ];
    ValueNotifier<int> bottomIndex = ValueNotifier<int>(0);
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(backgroundColor: UIColor.green, actions: const [NotificationButton()]),
      bottomNavigationBar: BottomNav(bottomNav: bottomIndex),
      body: ValueListenableBuilder(
          valueListenable: bottomIndex,
          builder: (context, value, widget) {
            return screens[bottomIndex.value];
          }),
    );
  }
}
