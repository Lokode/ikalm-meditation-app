import 'package:flutter/material.dart';
import 'package:icalm/feed.dart';
// import 'package:icalm/splashScreen.dart';
import 'package:icalm/login.dart';
import 'package:icalm/profile/profileScreen.dart';
import 'package:icalm/bottombarnav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FeedPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        BottomBar.id: (context) => BottomBar(),
        FeedPage.id: (context) => FeedPage(),
        ProfileScreen.id: (context) => ProfileScreen(),
      },
      
    );
    
  }
}
