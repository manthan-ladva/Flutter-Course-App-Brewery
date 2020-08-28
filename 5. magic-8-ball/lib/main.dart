import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            'Ask Me Anything...',
            style: GoogleFonts.taviraj(
              textStyle: TextStyle(fontSize: 20),
            ),
          )),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Center(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  print(ballNumber);
                });
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(Icons.stop),
            iconSize: 70,
            color: Colors.white,
            onPressed: () {
              setState(() {
                ballNumber = 0;
              });
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'by Manthan',
            style: GoogleFonts.getFont(
              'Pacifico',
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
