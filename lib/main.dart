import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("DICE APP"),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    var LeftDiceNumber=5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("HELLO MOTO");
              },
              child: Image.asset(
                "images/dice$LeftDiceNumber.jpg",
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("HELLO CHHOTO");
              },
              child: Image.asset("images/dice1.jpg"),
            ),
          )
        ],
      ),
    );
  }
}
