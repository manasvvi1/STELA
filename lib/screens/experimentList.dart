import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

var num = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 1', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 2', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 3', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 4(a)', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 4(b)', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 5', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 6', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 7', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 8', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 9', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 10', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 11', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primIceBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primBlue),
                            ),
                            child: Text('Experiment No. 12', style: TextStyle(fontSize: 15, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
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
            )));
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
