import 'package:flutter/material.dart';

class Mooji extends StatelessWidget {
  const Mooji({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mooji')
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