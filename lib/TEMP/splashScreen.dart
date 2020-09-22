import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icalm/feed.dart';
import 'package:icalm/retreats/retreatScreens/night.dart';
// import 'bottombarnav.dart';
import 'loginScreen.dart';

class SplashScreen extends StatelessWidget {

  static String id = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (ctx, AsyncSnapshot<FirebaseUser> snapshot) {
        if(snapshot.hasData) {
          if(snapshot.data != null) {

            // if user is signed in
            // return BottomBar();

          } else {
            // if user is not signed in
            return LoginScreen();
          }
        }

        // if user is not signed in
        return LoginScreen();
      },
    );
  }
}