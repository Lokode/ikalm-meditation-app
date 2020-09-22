import 'package:flutter/material.dart';
import 'package:icalm/feed.dart';
import 'package:icalm/posts/postsFeed.dart';
import 'package:icalm/posts/postsHomeScreen.dart';
import 'package:icalm/posts/postsImageScreen.dart';
import 'package:icalm/profile/profileScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:ui';

import 'package:icalm/login.dart';

class BottomBar extends StatefulWidget {
  static String id = 'bottom_bar';
  BottomBar() : super();

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final Color bgColor = Color(0xFFF8F4F0);

  int currentTabIndex = 0;
  List<Widget> tabs = [FeedPage(), PostsFeed(), ProfileScreen()];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          tabs[currentTabIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 9, sigmaY: 6),
                child: Container(
                  width: screenWidth,
                  height: 50,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data:
                    Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: CurvedNavigationBar(
                  onTap: onTapped,
                  index: currentTabIndex,
                  buttonBackgroundColor: Colors.white,
                  height: 50,
                  items: <Widget>[
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Color(0xD70C0E13),
                    ),
                    Icon(Icons.chat_bubble, size: 20, color: Color(0xD70C0E13)),
                    Icon(Icons.person, size: 20, color: Color(0xD70C0E13)),
                  ],
                  animationDuration: Duration(
                    milliseconds: 200,
                  ),
                  animationCurve: Curves.bounceInOut,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
