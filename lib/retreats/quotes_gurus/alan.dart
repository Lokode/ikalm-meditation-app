import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:icalm/retreats/quotes_gurus/audio/ytAlan.dart';
import 'package:icalm/retreats/quotes_gurus/guru_books/alan_books.dart';
import 'package:flutter/rendering.dart';
import 'package:icalm/retreats/quotes_gurus/randomize_quotes/alanquotes.dart';

class Alan extends StatefulWidget {
  @override
  _AlanState createState() => _AlanState();
}

class _AlanState extends State<Alan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width),
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 270),
                  child: Center(
                    child: Text(
                      'Alan watts'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PlayD-bold',
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF0C0E13), Color(0xFF11141B)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 360),
            child: Center(
              child: Container(
                child: Text(
                  'Writer | speaker'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 550),
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/aw1.png'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 220),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text:
                          'Alan Wilson Watts was a British writer and speaker known for'
                          ' interpreting and popularising Buddhism, Taoism, and Hinduism for a Western audience. '
                          'Born in Chislehurst, England, he moved to the United States in 1938 and began Zen training in New York.',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 85),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.tealAccent)),
                onPressed: () {},
                color: Colors.teal,
                textColor: Colors.white,
                child: Text("Discussion", style: TextStyle(fontSize: 14)),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5, // starting position
            minChildSize: 0.5, //scroll up until
            maxChildSize: 1, //all th way up
            expand: true,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30.0)),
                  color: Color(0xFFFCF8F4),
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          child: AlansRandomQuotes(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: Container(
                            child: Text(
                              'Alan Watts explains why attachments cause suffering',
                              style: TextStyle(
                                  color: Color(0xFF0C0E13),
                                  fontFamily: 'PlayD-bold',
                                  fontSize: 22.0),
                            ),
                          ),
                        ),
                        //video/image
                        GestureDetector(
                           onTap: (){
                             setState(() {
                               AlanYT();
                             });},
                                                  child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/ytimages/aw3.png',
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 200,
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //paragraph
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: RichText(
                            softWrap: true,
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      '\Attachment, clinging, desiring…These are terms you’ve probably'
                                      'heard of if you’ve studied Eastern philosophy before.'
                                      'In the Buddha’s Four Noble Truths, it says that suffering is due to attachment.'
                                      'This is the desire to have and control things.'
                                      'As philosopher Alan Watts mentions in the below video, this could be a craving of sensual pleasure, the desire for fame or the desire to avoid unpleasant sensations.'
                                      'Buddha also says that the mind experiences complete freedom when it lets go of desire and craving.',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontFamily: 'Roboto',
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          child: RichText(
                            softWrap: true,
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'So the question is, what does it truly mean to let go of attachment and desiring? It’s a big topic but as I understand it, letting go of attachment basically means that you don’t grasp onto things around you in an attempt to find comfort or happiness from them, and realize that true peace and happiness comes from letting go of those things. Check out this amazing video of the philosopher Alan Watts describing what letting go of attachment means and how it can help you live a more meaningful life.',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontFamily: 'Roboto',
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: AlanBooksListview(),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
