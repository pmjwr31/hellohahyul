import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('김경석 미래 와이프 찾기'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/heart.png'),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Image.asset(
                      'images/ks2.png',)),
                    SizedBox(
                      width: 40.0,
                      height: 50.0,
                    ),
                    Expanded(child: Image.asset('images/date$rightDice.png',fit: BoxFit.fill,)),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: RaisedButton(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.deepOrange,
                      size: 50.0,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        // leftDice = Random().nextInt(6) + 1;
                        rightDice = Random().nextInt(7) + 1;
                      });
                      showToast(
                          "Left dice: {$leftDice}, Right dice: {$rightDice}");
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(msg: message,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM
  );
}