import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF00695C),
        appBar: AppBar(
          title: Center(
            child: Text("I-am-poor ..by Manthan"),
          ),
          backgroundColor: Color(0xFF4DB6AC),
        ),
        body: Image(
          image: NetworkImage(
              'http://media1.santabanta.com/full5/Nature/Birds/birds-344a.jpg'),
        ),
      ),
    ),
  );
}
