import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icalm/posts/postsImageScreen.dart';

class PostsFeed extends StatefulWidget {
  @override
  _PostsFeedState createState() => _PostsFeedState();
}

class _PostsFeedState extends State<PostsFeed> {
  String name;

  String photoUrl;

  bool isLoaded = false;
  bool _isLoading = true;
  Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  List<DocumentSnapshot> posts;

  @override
  void initState() {
    _fetchPosts();
    getProfileData();
    super.initState();
  }

  _fetchPosts() async {
    try {
      setState(() {
        _isLoading = true;
      });
      QuerySnapshot snap = await _db
          .collection("posts")
          .orderBy("date", descending: true)
          .getDocuments();
      setState(() {
        posts = snap.documents;
        _isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  void getProfileData() async {
    try {
      FirebaseUser user = await _auth.currentUser();

      DocumentSnapshot doc =
          await _db.collection("users").document(user.uid).get();

      setState(() {
        isLoaded = true;
        name = doc.data["displayName"];
        photoUrl = doc.data["photoUrl"];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Container(
        child: LinearProgressIndicator(),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          actionsIconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Leaf Feed",
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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: RefreshIndicator(
              onRefresh: () {
                _fetchPosts();

                return null;
              },
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 6,
                      //     color: Color(0x22000000),
                      //     offset: Offset(0,4),
                      //   ),
                      // ]
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(170),
                                  child: Image(
                                    image: NetworkImage(photoUrl),
                                    width: 35,
                                    height: 35,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(posts[i].data["name"])
                            ],
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: FadeInImage(
                            placeholder: AssetImage("assets/placeholder.png"),
                            image: NetworkImage(posts[i].data["photoUrl"]),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RichText(
                          softWrap: true,
                          text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: posts[i].data["name"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: " ${posts[i].data["caption"]}",
                                ),
                              ]),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
    }
  }
}
