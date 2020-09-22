import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icalm/posts/postsFeed.dart';
import 'postsImageScreen.dart';
import 'package:icalm/profile/profileScreen.dart';


class PostsHomeScreen extends StatefulWidget {
  @override
  _PostsHomeScreenState createState() => _PostsHomeScreenState();
}

class _PostsHomeScreenState extends State<PostsHomeScreen> {
  int currentPage = 0;

  var pages = [PostImageScreen(), ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        actionsIconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Leeef",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            tooltip: "Take a picture",
            icon: Icon(Icons.camera),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostImageScreen(),
                  fullscreenDialog: true,
                ),
              );
            },
            
          ),
          
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: RaisedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
          )
    ),
    
        ],
      ));
  }
}