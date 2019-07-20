import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: new Center(child: Text('Decision Maker'),),
          backgroundColor: Colors.white,
        ),
        body: DMkr(),
      ),
    ),
  );
}

class DMkr extends StatefulWidget {
  @override
  _DMkrState createState() => _DMkrState();
}

class _DMkrState extends State<DMkr> {
  int ballno = 1 ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(onPressed:() {
              setState(() {
                ballno = Random().nextInt(4)+1;
              });
            },
              child: Image.asset('images/ball$ballno.png'),
            ),
          ),
        ],
      ),
    );
  }
}

