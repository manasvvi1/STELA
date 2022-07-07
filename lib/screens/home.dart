import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

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
              margin: EdgeInsets.symmetric(vertical: 150, horizontal: 15),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(padding: EdgeInsets.all(10), child: Text('STELA', style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold))),
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
                              child: Text(
                                'LOG IN',
                                style: TextStyle(fontSize: 30, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )),
                          onPressed: () {
                            setState(() {
                            });
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
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(fontSize: 30, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )),
                          onPressed: () {
                            setState(() {
                            });
                          },
                        ),
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
          )),
    );
  }
}
