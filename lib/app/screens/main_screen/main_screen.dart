import 'package:flutter/material.dart';
import 'package:monmatics/app/screens/home_screen/home_screen.dart';
import 'package:monmatics/app/screens/notification/notification_screen.dart';
import 'package:monmatics/utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activePageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      activePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const CategoriesScreen();
    if (activePageIndex == 1) {
      activeScreen = const NotificationScreen();
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: appSchemeLight.primary),
          elevation: 0,
          onTap: (value) => _selectPage(value),
          currentIndex: activePageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: 'Notifications'),
          ]),
      body: activeScreen,
    );
  }
}
