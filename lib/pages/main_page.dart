import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/pages/profile_page.dart';
import 'package:flutter_chat_app_ui/pages/video_call.dart';
import 'package:flutter_chat_app_ui/pages/voice_call.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:unicons/unicons.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  List<Widget> pageList = <Widget>[
    HomePage(),
    VideoCallPage(),
    VoiceCallPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO IndexStack BottomNavBar

      body: IndexedStack(
        index: _pageIndex,
        children: pageList,
      ),
      bottomNavigationBar: Container(
        color: Colors.deepPurple.shade800,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: GNav(
          onTabChange: (indexValue) {
            setState(() {
              _pageIndex = indexValue;
            });
          },
          padding: EdgeInsets.symmetric(
              horizontal: 24, vertical: 12), // navigation bar padding

          tabBackgroundColor: Colors.deepPurple,
          haptic: false,
          activeColor: Colors.white,
          color: Colors.white,
          tabs: [
            GButton(icon: UniconsLine.estate),
            GButton(icon: UniconsLine.video),
            GButton(icon: UniconsLine.phone),
            GButton(icon: UniconsLine.user),
          ],
        ),
      ),
    );
  }
}
