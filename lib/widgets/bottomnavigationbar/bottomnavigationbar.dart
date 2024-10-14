import 'package:dorixona/constants/Colors/colors.dart';
import 'package:dorixona/pages/fikr/fikr.dart';
import 'package:dorixona/pages/home/home.dart';
import 'package:dorixona/pages/profil/profil.dart';
import 'package:dorixona/pages/qr-code-scaner/qr-code-scaner.dart';
import 'package:dorixona/pages/chat/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
    ChatPage(),
    Alarm(),
    Fikrmulohaza(),
    Profil(),

  ];

  void _onItemTapped(int index) {
    const int delayMilliseconds = 1;
    Future.delayed(
      const Duration(microseconds: delayMilliseconds),
      () {
        setState(() {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatPage()),
            );
          } else {
            _selectedIndex = index;
          }
        });
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // This is to avoid resizing the whole screen when keyboard appears
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
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Budilnik',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mark_chat_read),
              label: 'Fikr mulohaza',
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
          onPressed: () async {
            var res = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SimpleBarcodeScannerPage(),
              ),
            );
            if (res is String) {
              const SimpleBarcodeScannerPage(
                cancelButtonText:
                    "Bekor qilish", // Your custom cancel button text
              );
              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text(
                    'UZR!',
                    style: TextStyle(color: AppColors.icon_colors2),
                  ),
                  content: const SizedBox(
                    width: 200.0, // set your desired width here
                    height: 150.0, // set your desired height here
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Hozirda aptekalar bilan shartnoma imzolanmagan."),
                        Text("+998971712402 ishlab chiqaruvchi. Shohbozbek bilan bog'laning"),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text("Yaxshi tushundim"),
                      onPressed: () async {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );



            }
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


