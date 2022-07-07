import 'dart:math';

import 'package:flutter/cupertino.dart';
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
          backgroundColor: primPink,
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Experiment List', style: TextStyle(fontSize: 25, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold))
                  ),
                  Container(
                    child: Column(
                      children: [
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 1', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {
                            setState((){
                              expNum = 0;
                            });
                            print(expNum);
                          },

                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 2', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {
                            setState((){
                              expNum = 1;
                            });
                            print(expNum);
                          },

                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 3', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {
                            setState((){
                              expNum = 2;
                            });
                            print(expNum);
                          },

                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 1', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {},

                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 1', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {},

                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 1', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {},

                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 1', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {},

                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primIceBlue,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: primBlue),
                              ),
                              child: Text('Experiment No. 1', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ),
                          onPressed: () {},

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  Icons.saved_search_rounded,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  Icons.account_circle,
                  color: Colors.black,
                  size: 40,
                ),
              ],
            ),
          )
      ),
    );
  }
}