import 'package:flutter/material.dart';
import 'package:vendy_app/screens/explore_screen/explore_screen.dart';
import 'package:vendy_app/screens/home_screen/home_screen.dart';
import 'package:vendy_app/screens/profile_screen/profile_screen.dart';
import 'package:vendy_app/screens/settings_screen/settings_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    SettingsScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.1), // Shadow color
                    blurRadius: 10, // Shadow blur
                    spreadRadius: 2, // Shadow spread
                    offset: Offset(
                        0, -4), // Position of the shadow (vertical offset)
                  ),
                ],
              ),
              child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  type:
                      BottomNavigationBarType.fixed, // Prevents shifting/moving
                  selectedFontSize: 12,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  selectedItemColor: Colors.black, // Selected item label color
                  unselectedItemColor:
                      Colors.black, // Unselected item label color
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  currentIndex: _currentIndex,
                  items: [
                    BottomNavigationBarItem(
                        activeIcon: Icon(
                          Icons.home,
                        ),
                        icon: Icon(
                          Icons.home_outlined,
                        ),
                        label: "Home"),
                    BottomNavigationBarItem(
                        activeIcon: Icon(Icons.history_outlined),
                        icon: Icon(
                          Icons.history,
                        ),
                        label: "Activities"),
                    BottomNavigationBarItem(
                        activeIcon: Icon(
                          Icons.home,
                        ),
                        icon: Icon(
                          Icons.settings,
                        ),
                        label: "Settings"),
                    BottomNavigationBarItem(
                        activeIcon: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        label: "Profile")
                  ]),
            ),
            body: screens[_currentIndex]));
  }
}
