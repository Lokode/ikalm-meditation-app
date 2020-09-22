import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<Post> posts = [
    Post(
        userName: "Amy",
        userImage:
            "https://images.pexels.com/photos/735552/pexels-photo-735552.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/4380970/pexels-photo-4380970.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Freedom is within"),
    Post(
        userName: "Monica",
        userImage:
            "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/3608533/pexels-photo-3608533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Freedom is within"),
    Post(
        userName: "Joseph",
        userImage:
            "https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        postImage:
            "https://images.pexels.com/photos/3876328/pexels-photo-3876328.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Freedom is within"),
    Post(
        userName: "Ram",
        userImage:
            "https://images.pexels.com/photos/1438275/pexels-photo-1438275.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        postImage:
            "https://images.pexels.com/photos/4350202/pexels-photo-4350202.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Freedom is within"),
    Post(
        userName: "Gauri",
        userImage:
            "https://images.pexels.com/photos/1841819/pexels-photo-1841819.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        postImage:
            "https://images.pexels.com/photos/2954199/pexels-photo-2954199.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Freedom is within"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F0),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                          height: 100,
                          child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_upward), 
                                      onPressed: () {}),
                        ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: posts.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                          child: Column(
                        children: <Widget>[
                          
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image(
                                          image: NetworkImage(
                                            posts[i].userImage),
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(posts[i].userName),
                                    ],
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.more_horiz), 
                                        onPressed: () {}),
                                ],
                              ),
                            ),
                          ),
                          Image(
                            fit: BoxFit.cover,
                            height: 250,
                            width: 400,
                            image: NetworkImage(
                              posts[i].postImage),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                      icon: Icon(
                                        Icons.thumb_up), 
                                        onPressed: () {}
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.comment), 
                                        onPressed: () {}
                                  ),
                                 
                                    ]
                                    
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.bookmark), 
                                        onPressed: () {}
                                  ),

                                ]
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 14,),
                                child: RichText(
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                  text: TextSpan(
                                    children:[
                                      TextSpan(
                                        text: 'Liked by: ',
                                        style: TextStyle(
                                          color: Colors.black
                                        )
                                      ),
                                      TextSpan(
                                        text: 'Mike, ',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: 'Sara, ',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: 'and ',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '2034 others',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                      ),

                                    ]
                                  ),
                                ),
                              )
                        ],
                      ));
                    })),
          ],
        ),
      ),
    );
  }
}

class Post {
  final String userImage;
  final String userName;
  final String postImage;
  final String caption;

  Post({
    this.userImage,
    this.userName,
    this.postImage,
    this.caption,
  });
}
