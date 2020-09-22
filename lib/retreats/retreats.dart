import 'package:flutter/material.dart';
import 'package:icalm/retreats/retreatScreens/onemintimer.dart';
import 'package:icalm/retreats/retreatScreens/evening.dart';
import 'package:icalm/retreats/retreatScreens/morning.dart';
import 'package:icalm/retreats/retreatScreens/night.dart';
class RetreatsListview extends StatelessWidget {
  double _retreatSizedBoxwidth = 2.0;
  Color headingColor = Color(0xFF233d4d);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 10, 0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Text(
                  'Let\'s begin with a smile',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: headingColor,
                    fontFamily: 'Roboto',
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 250.0,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              SizedBox(
                width: _retreatSizedBoxwidth,
                height: _retreatSizedBoxwidth,
              ),
              //'images/1m.jpg'
              RetreatContainers(Color(0x2A52A366),
                  'One Minuite meditation', '1 Min', OmmTheme()),
              SizedBox(
                width: _retreatSizedBoxwidth,
              ),
              // //'images/c2.jpg'
              // RetreatContainers(Color(0xBBAAD1CF),
              //     'Morning Mediation', '30 Min', MorningMeditation()),
              // SizedBox(
              //   width: _retreatSizedBoxwidth,
              // ),
              // //'images/c3.jpg'
              // RetreatContainers(Color(0x5B16689B),
              //     'Evening Meditation', '15 Min', EveningMeditation()),
              // SizedBox(
              //   width: _retreatSizedBoxwidth,
              // ),
              // //'images/c4.jpg'
              // RetreatContainers(Color(0x575F6080),
              //     'Night Meditation', '30 Min', NightMeditation()),
              // SizedBox(
              //   width: _retreatSizedBoxwidth,
              // ),
            ]),
          ),
        ]);
  }
}

class RetreatContainers extends StatelessWidget {
  RetreatContainers(
    this.retreatBoxColor,
    // this.retreatBoxImage,
    this.cardTitles,
    this.cardSubHeading,
    this.routeToScreen,
  );
  final Color retreatBoxColor;
  // final String retreatBoxImage;
  final String cardTitles;
  final String cardSubHeading;
  final Widget routeToScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // GestureDetector(
        //   onTap: () {
        //     print('sfgsdgsdgsdgsdgsdgs');
        //   },

        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right:210),
            child: Container(
              height: 230.0,
              width: 350.0,
              decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage(
                //       retreatBoxImage,
                //     ),
                //     fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   colors: [Colors.transparent, Colors.white],
                // ),
                color: retreatBoxColor,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black12,
                //     offset: Offset(1, 3),
                //     blurRadius: 5.0,
                //     spreadRadius: 2.0,
                //   )
                // ],
              ),
              //fade
              // child: Padding(
              //   padding: const EdgeInsets.only(
              //     bottom: 0,
              //     top: 10,
              //   ),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //         colors: [Colors.transparent, Color(0xDA181818)],
              //       ),
              //       borderRadius: BorderRadius.circular(10),
              //     ),

                  //white text box
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top: 150, bottom: 0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       gradient: LinearGradient(
                  //         begin: Alignment.bottomCenter,
                  //         end: Alignment.topCenter,
                  //         colors: [Color(0xFFFAD0AE), Color(0xFFFAD0AE)],
                  //       ),
                  //       borderRadius: BorderRadius.only(
                  //         bottomLeft: const Radius.circular(10.0),
                  //         bottomRight: const Radius.circular(10.0),
                  //       ),
                  //     ),

                  //teal line
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top: 0, bottom: 45),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       gradient: LinearGradient(
                  //   begin: Alignment.centerRight,
                  //   end: Alignment.centerLeft,
                  //   colors: [Colors.teal[200], Colors.teal[300]],)
                  //   ),
              //   ),
              // ),
            ),
          ),
        ),
        //   ),
        // ),
        //card button
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 190.0, bottom: 25, left: 225),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => routeToScreen,
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 120.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "START",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
        //card title
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 190.0, bottom: 30, left: 35),
            child: Text(
              cardTitles,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0x9C0C0E13),
              ),
            ),
          ),
        ),
        //card sub heading
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 210.0, bottom: 20, left: 35),
            child: Text(
              cardSubHeading,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0x9C0C0E13),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
