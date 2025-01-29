import 'package:flutter/material.dart';
import 'package:vendy_app/colors.dart';
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
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.1), // Shadow color
                    blurRadius: 10, // Shadow blur
                    spreadRadius: 20, // Shadow spread
                    offset: Offset(
                        0, -4), // Position of the shadow (vertical offset)
                  ),
                ],
              ),
              child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  type:
                      BottomNavigationBarType.fixed, // Prevents shifting/moving
                  selectedFontSize: 10,
                  unselectedFontSize: 10,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  selectedItemColor: AppColors.button, // Selected item label color
                  unselectedItemColor:Colors.black, // Unselected item label color
                  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: AppColors.button),
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  currentIndex: _currentIndex,
                  items: [
                    BottomNavigationBarItem(
                        activeIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/home.png',
                            height: 26,
                            width: 26,),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/home_outlined.png',
                            height: 26,
                            width: 26,),
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        activeIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/history.png',
                            height: 26,
                            width: 26,),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/history_outlined.png',
                            height: 26,
                            width: 26,),
                        ),
                        label: 'History'),
                    BottomNavigationBarItem(
                        activeIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/settings.png',
                            height: 26,
                            width: 26,),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/settings_outlined.png',
                            height: 26,
                            width: 26,),
                        ),
                        label: 'Settings'),
                    BottomNavigationBarItem(
                        activeIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/profile.png',
                            height: 26,
                            width: 26,),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,6),
                          child: Image.asset(
                            'assets/profile_outlined.png',
                            height: 26,
                            width: 26,),
                        ),
                        label: 'Profile'),
                  ]),
            ),
            body: screens[_currentIndex]));
  }
}
