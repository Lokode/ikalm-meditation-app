import 'package:flutter/material.dart';

class Ramakrishna extends StatelessWidget {
  const Ramakrishna({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ramakrishna')
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