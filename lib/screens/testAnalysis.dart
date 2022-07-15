import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TestAnalysis());
}

class TestAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xffEDC7C7),
            body: Container(
                height: 105,
                margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Test Analysis',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                  ],
                )),
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
