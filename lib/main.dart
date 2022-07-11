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
                    child: Text('ASSESSMENT MODULE',
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
                      child: Text('The Lion is known as the king of the jungle?',
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
                      hintText: "Type Here",
                    ),
                  )),

                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('Name the National bird of India?',
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
                          hintText: "Type Here",
                        ),
                      )),

                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('What is the National Anthem of India?',
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
                          hintText: "Type Here",
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('What is the National song of India?',
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
                          hintText: "Type Here",
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('Baby frog is known as.......',
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
                          hintText: "Type Here",
                        ),
                      )),

                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('How many consonants are there in the English alphabet?',
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
                          hintText: "Type Here",
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
                          'SUBMIT',
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
