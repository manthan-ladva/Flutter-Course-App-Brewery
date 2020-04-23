import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/manthan.jpg'),
              ),
              Text(
                "Manthan Ladva",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black54,
                  fontFamily: 'Parisienne',
                ),
              ),
              Text(
                "Machine Learning Engineer",
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.grey,
                  thickness: 2.5,
                ),
              ),
              Card(
//                padding: EdgeInsets.all(10),
                color: Colors.black54,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "+91 70435 27327",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
//                padding: EdgeInsets.all(5),
                color: Colors.black54,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "manthanladva999@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
//                padding: EdgeInsets.all(5),
                color: Colors.black54,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      Icons.attachment,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "twitter.com/manthan_ladva",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
