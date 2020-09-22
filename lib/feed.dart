import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:icalm/login.dart';
import 'package:icalm/profile/profileScreen.dart';
import 'package:icalm/retreats/deepBreathing.dart';
import 'retreats/retreats.dart';
import 'retreats/quotes.dart';
import 'package:icalm/bottombarnav.dart';

class FeedPage extends StatefulWidget {
  static String id = 'welcome_screen';
    static Color allbgColor = Color(0xFFF8F4F0);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn();
  final Color bgColor = Color(0xFFF8F4F0);
  //   int _page = 0;
  // final _pageOption = [
  //   FeedPage(),
  //   ChatScreen(),
  //   ProfileScreen(),
  // ];
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
       
      backgroundColor: bgColor,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: false,
                flexibleSpace: Container(
                    color: bgColor,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomRight,
                    //     colors: <Color>[
                    //       Color(0xFF2a9d8f),
                    //       Color(0xFF257E73),
                    //     ],
                    //   ),
                    // ),
                    child: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text(
                        'o',
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Roboto',
                          fontSize: 20.0,
                        ),
                      ),
                      // background: Image.asset(
                      //   'images/b3.jpg',
                      //   fit: BoxFit.cover,
                      // ),
                    )),
                elevation: 0,
                expandedHeight: 40,
                pinned: false,
                // actions: <Widget>[
                //   FlatButton.icon(
                //       onPressed: () {
                //         signOutGoogle();
                //         Navigator.of(context).pushAndRemoveUntil(
                //             MaterialPageRoute(builder: (context) {
                //           return LoginPage();
                //         }), ModalRoute.withName('/'));
                //       },
                //       icon: Icon(Icons.exit_to_app),
                //       label: Text(''))
                // ],
              ),
              SliverPadding(
                padding: EdgeInsets.only(bottom: 50),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      RetreatsListview(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, ),
                        child: QuotesListview(),
                      ),
                      Title(
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, bottom: 10,),
                          child: Text(
                            'Self growth',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: RetreatsListview().headingColor,
                              fontFamily: 'Roboto',
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      DeepBreathing(Color(0x2AF4A361), 'Suggest me one thing I should do today'),
                      DeepBreathing(Color(0x2AF4A361), 'Exercise'),
                      DeepBreathing(Color(0x2AF4A361), 'Read a poem'),
                      DeepBreathing(Color(0x2AF4A361), 'Communicate'),
                      DeepBreathing(Color(0x2AF4A361), 'Become self aware'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      
    );
  }
}
