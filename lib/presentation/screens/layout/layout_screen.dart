import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:orange_workshop/constants/constant.dart';

import 'package:orange_workshop/presentation/widgets/auth/title_widget.dart';

import '../screens_layout/home_screen.dart';
import '../screens_layout/news_screen.dart';
import '../screens_layout/settings_screen.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = 'layout';

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    const NewsScreen(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 13, bottom: 7, right: 5, left: 5),
        child: GNav(
            onTabChange: (newIndex) {
              setState(() {
                selectedIndex = newIndex;
              });
            },
            selectedIndex: selectedIndex,
            rippleColor: const Color.fromARGB(166, 255, 255, 255),
            hoverColor: Colors.grey[700]!,
            haptic: true,
            tabBorderRadius: 20,
            tabActiveBorder: Border.all(color: Colors.white, width: 1),
            tabBorder: Border.all(color: Colors.white60, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 8)
            ],
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 500),
            gap: 8,
            color: Colors.grey[800],
            activeColor: primaryColor,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.newspaper,
                text: 'news',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ]),
      ),
    );
  }
}
