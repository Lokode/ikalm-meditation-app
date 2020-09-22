import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:icalm/retreats/quotes_gurus/audio/ytAlan.dart';


class Jiddu extends StatefulWidget {
  const Jiddu({Key key}) : super(key: key);

  @override
  _JidduState createState() => _JidduState();
}

class _JidduState extends State<Jiddu> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jiddu Krishnamurthi')),
      body: Column(
        children: <Widget>[
          Container(

          child: RaisedButton(
            onPressed:(){
              AlanYT();
            }
          ),
          
          // Container(child: AlanYT()),

        ),
          
        ],
      ),
    );
  }
}
