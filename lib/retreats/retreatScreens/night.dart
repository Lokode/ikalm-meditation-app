import 'package:flutter/material.dart';

class NightMeditation extends StatelessWidget {
  const NightMeditation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Night Meditation')
      // ),
      body: Stack(
        children: <Widget>[
               Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF2b5876), Color(0xFF4e4376)]
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