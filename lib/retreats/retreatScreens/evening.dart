import 'package:flutter/material.dart';

class EveningMeditation extends StatelessWidget {
  const EveningMeditation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('EveningMeditation')
      // ),
      body:  Stack(
        children: <Widget>[
               Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF0B486B), Color(0xFFF56217)]
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