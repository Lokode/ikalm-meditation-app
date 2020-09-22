import 'package:flutter/material.dart';
import 'package:icalm/retreats/quotes_gurus/guru_books/deepak_books.dart';
import 'package:flutter/rendering.dart';
import 'package:icalm/retreats/quotes_gurus/randomize_quotes/deepakquotes.dart';

class DeepakChopra extends StatefulWidget {
  @override
  _DeepakChopraState createState() => _DeepakChopraState();
}

class _DeepakChopraState extends State<DeepakChopra> {

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
                      'Deepak chopra'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.grey,
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
                  'American-Indian author'.toUpperCase(),
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
                        image: AssetImage('images/guru_images/dc2.jpg'), fit: BoxFit.cover),
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
                          'Deepak Chopra is an Indian-born American author and alternative-medicine advocate. A prominent figure in the New Age movement, his books and videos have made him one of the best-known and wealthiest figures in alternative medicine.',
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
              padding: const EdgeInsets.only(bottom: 70),
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
                          child: DeepakRandomQuotes(),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left:20, right: 20, top:20),
                          child: Container(
                            child: Text(
                              'Only a Silent Mind Can Be a Healing Mind',
                              style: TextStyle(
                                  color: Color(0xFF0C0E13),
                                  fontFamily: 'PlayD-bold',
                                  fontSize: 22.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20, right: 20, top:20),
                          child: RichText(
                            softWrap: true,
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'Silent mind is about reconnecting to your source. Everyone relies on the top layer of the mind, which is active, constantly thinking and feeling. But when these feelings get fixated on anxiety, alarm, dread, and uncertainty, the active mind cannot pull itself out of its own spiral. Mental activity becomes useless to heal itself, just as a runaway car cannot apply its own brakes.',
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
                          padding: const EdgeInsets.only(left:20, right: 20, top:20),
                          child: RichText(
                            softWrap: true,
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'But countless modern people have tried meditation, and they do not experience the kind of reset that is needed in a crisis. Partly this is due to lack of commitment; the average person has tried meditation and left it  behind, or only meditates when a sort of psychological Band-Aid is needed. Let me look a bit deeper to show what has been missed, because silent mind is truly the only healer.',
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
                          padding: const EdgeInsets.only(left:20, right: 20, top:20, bottom: 20),
                          child: RichText(
                            softWrap: true,
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'Your source is still and silent; you come closest to it in deep, dreamless sleep. But in a crisis, everything doesn’t automatically go back into balance the way your heart rate will return to normal after you quit running. It turns out that there is useful silence and not-so-useful silence. As consciousness starts to move from its silent source, different paths open up, and the paths you have favored become your unique way of turning silence into something else.',
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
                          child: DeepakBooksListview(),
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
