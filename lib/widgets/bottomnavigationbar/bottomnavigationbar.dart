import 'package:dorixona/constants/Colors/colors.dart';
import 'package:dorixona/pages/home/home.dart';
import 'package:dorixona/pages/profil/profil.dart';
import 'package:dorixona/pages/search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/alarm/alarm.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    Home(),
    Search(),
    Alarm(),
    Profil(),
  ];

  void _onItemTapped(int index) {
    const int delayMilliseconds = 1;
    Future.delayed(
      const Duration(microseconds: delayMilliseconds),
      () {
        setState(
          () {
            _selectedIndex = index;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // This is to avoid resizing the whole screen when keyboard appears
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Bosh sahifa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Qidirishlar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Budilnik',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.icon_colors,
          unselectedItemColor: AppColors.icon_colors1,
          onTap: _onItemTapped,
          unselectedLabelStyle: TextStyle(fontSize: 12),
          selectedLabelStyle: TextStyle(fontSize: 12),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 25),
        child: FloatingActionButton(
          onPressed: () {
            // Your onPressed logic here
          },
          backgroundColor: AppColors.icon_colors2,
          child: const Icon(
            CupertinoIcons.qrcode_viewfinder,
            color: Colors.white, // Replace with your color
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
