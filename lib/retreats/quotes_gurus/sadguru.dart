import 'package:flutter/material.dart';

class Sadguru extends StatelessWidget {
  const Sadguru({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sadguru')
      ),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.pop(context);

        },
        child:Text('Go Back'))
      ),
    );
  }
}