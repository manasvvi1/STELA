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
      backgroundColor: primIceBlue,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(60),
          child: Column(
            children: [
              Container(padding: EdgeInsets.all(10), child: Text('STELA', style: TextStyle(color: Colors.white, fontSize: 35, fontFamily: 'Mandorlato-ExtraBold', fontWeight: FontWeight.bold))),
              Container(
                child: Column(
                  children: [
                    FlatButton(
                      padding: EdgeInsets.all(50),
                      child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: primPink,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2.0, color: primLightPink),
                          ),
                          child: Text(
                            'LOG IN',
                            style: TextStyle(fontSize: 20, fontFamily: 'Mandorlato-Bold', fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      onPressed: () {
                        setState(() {
                          expNum = 0;
                        });
                        print(expNum);
                      },
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(50),
                      child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: primLightPink,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2.0, color: primLightPink),
                          ),
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(fontSize: 20, fontFamily: 'Mandorlato-Bold', fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      onPressed: () {
                        setState(() {
                          expNum = 1;
                        });
                        print(expNum);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
