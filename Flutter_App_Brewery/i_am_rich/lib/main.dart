import 'package:flutter/material.dart';

// Main function is the starting of all the apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I Am Rich"),
          // backgroundColor: Color(0xFF00C853), //0xFF <- Pallet Code
          backgroundColor: Colors.yellow[600],
        ),
      ),
    ),
  );
}
