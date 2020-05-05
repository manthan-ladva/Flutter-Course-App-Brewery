import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildFunction(i, colorCode) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(i); //1st Function Called
        },
        color: colorCode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildFunction(1, Colors.red),
              buildFunction(2, Colors.orange),
              buildFunction(3, Colors.yellow),
              buildFunction(4, Colors.green),
              buildFunction(5, Colors.teal),
              buildFunction(6, Colors.blue),
              buildFunction(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
