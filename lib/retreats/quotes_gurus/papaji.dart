import 'package:flutter/material.dart';

class Papaji extends StatelessWidget {
  const Papaji({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Papaji')
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