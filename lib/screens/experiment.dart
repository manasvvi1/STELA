import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/constants/experimentDesc.dart';

var num = 0;

class Experiment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: primaryWhite,
            body: SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text('Experiment No.' + expNo[num],
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Mandorlato',
                                  fontWeight: FontWeight.bold))), // Heading
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryButton,
                        ),
                        child: Text('AIM',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Mandorlato',
                                fontWeight: FontWeight.bold)),
                      ), // AIM heading
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        child: Flexible(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  aim[num],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), // AIM text
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryButton,
                        ),
                        width: double.infinity,
                        child: Text('PROCEDURE',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Mandorlato',
                                fontWeight: FontWeight.bold)),
                      ), // PROCEDURE heading
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        child: Flexible(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  procedure[num],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), // PROCEDURE text
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryButton,
                        ),
                        width: double.infinity,
                        child: Text('ALGORITHM',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Mandorlato',
                                fontWeight: FontWeight.bold)),
                      ), // ALGORITHM heading
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        child: Flexible(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  algorithm[num],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), // ALGORITHM text
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryButton,
                        ),
                        width: double.infinity,
                        child: Text('PROGRAM',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Mandorlato',
                                fontWeight: FontWeight.bold)),
                      ), // PROGRAM heading
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        child: Flexible(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  program[num],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), // PROGRAM text
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryButton,
                        ),
                        width: double.infinity,
                        child: Text('RESULT',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Mandorlato',
                                fontWeight: FontWeight.bold)),
                      ), // RESULT heading
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        child: Flexible(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  result[num],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), // RESULT text
                    ],
                  )),
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
