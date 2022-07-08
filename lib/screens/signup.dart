import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      backgroundColor: primPink,
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Text('SIGN UP',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Mandorlato',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('NAME',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primIceBlue,
                      border: Border.all(width: 1, color: primBlue),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('EMAIL ID',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primIceBlue,
                      border: Border.all(width: 1, color: primBlue),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Email Id",
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('ENROLLMENT NUMBER',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primIceBlue,
                      border: Border.all(width: 1, color: primBlue),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Enrollment Number",
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('BRANCH',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primIceBlue,
                      border: Border.all(width: 1, color: primBlue),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Branch",
                      ),
                    )),

                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('CONTACT NUMBER',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primIceBlue,
                      border: Border.all(width: 1, color: primBlue),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Contact Number",
                      ),
                    )),

                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('CREATE A PASSWORD',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primIceBlue,
                      border: Border.all(width: 1, color: primBlue),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                      ),
                    )),

                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('CONFIRM PASSWORD',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primIceBlue,
                      border: Border.all(width: 1, color: primBlue),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                      ),
                    )),

                FlatButton(
                  padding: EdgeInsets.all(1),
                  child: Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        color: primIceBlue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2.0, color: primBlue),
                      ),
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  onPressed: () {},
                ),
              ],
            ),
          )),
    ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
