import 'package:flutter/material.dart';

class MorningMeditation extends StatelessWidget {
  const MorningMeditation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Morning Meditation')
      // ),
      body: Stack(
        children: <Widget>[
               Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFFFFC371), Color(0xFFFF5F6D)]
            )
          ),
          
        ),
         Center(
           child: RaisedButton(onPressed: (){
              Navigator.pop(context);

            },
            child:Text('Go Back')),
         ),
        ]
      ),
    );
  }
}