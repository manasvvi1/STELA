import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

var expNum;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.transparent,
            //backgroundImage: AssetImage("asssets/images/splash_screen.png"),
            body: SingleChildScrollView(
                child: new Column(children: [
              new Container(
                child: new Text(
                  'STELA',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, fontFamily: 'Mandorlato-ExtraBold', fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              new Container(
                height: 200.0,
                width: 200.0,
                decoration: new BoxDecoration(image: DecorationImage(image: new AssetImage('assets/images/home.png'), fit: BoxFit.fill), shape: BoxShape.circle),
              ),
            ]))));
  }
}
