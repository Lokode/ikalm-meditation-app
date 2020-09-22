import 'package:flutter/material.dart';

class Thich extends StatelessWidget {
  const Thich({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thich')
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