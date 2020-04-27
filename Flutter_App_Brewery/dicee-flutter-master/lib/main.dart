import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int ad = 0;

  void buttonPressed() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

      ad = leftDiceNumber + rightDiceNumber;
    });
  } //Function Created

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset("images/dice$leftDiceNumber.png"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.play_circle_outline),
                  color: Colors.white,
                  iconSize: 50,
                  onPressed: () {
                    buttonPressed();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.refresh),
                  color: Colors.white,
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = 1;
                      rightDiceNumber = 1;
                      ad = 0;
                    });
                    print("Done");
                  },
                ),
              ],
            ),
          ),
          Text(
            "$ad",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
          SizedBox(
            height: 0,
            width: 60,
            child: Divider(
              color: Colors.white,
              thickness: 4,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'by Manthan',
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'Pacifico'),
            ),
          ),
        ],
      ),
    );
  }
}
