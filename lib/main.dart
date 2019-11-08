import 'package:flutter/material.dart';
import 'dart:math';
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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage>
{
  int LeftDiceNumber=1,RightDiceNumber=1;
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                getpressed();
              },
              child: Image.asset(
                "images/dice$LeftDiceNumber.png",
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                getpressed();
              },
              child: Image.asset("images/dice$RightDiceNumber.png"),
            ),
          )
        ],
      ),
    );
  }
  void getpressed()
  {
    setState(() {
      LeftDiceNumber=Random().nextInt(6)+1;
      RightDiceNumber=Random().nextInt(6)+1;
    });
  }
}