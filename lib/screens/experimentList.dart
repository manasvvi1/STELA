import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/modules.dart';
import 'package:stela_app/screens/profile.dart';
import 'package:stela_app/screens/subjects.dart';

import 'analysisSubjects.dart';

var expNum;

class ExperimentList extends StatefulWidget {
  @override
  _ExperimentListState createState() => _ExperimentListState();
}

class _ExperimentListState extends State<ExperimentList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: primaryWhite,
          appBar: AppBar(
            title: Text('STELA'),
            backgroundColor: primaryBar,
            leading: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: primaryWhite,
                )),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Experiment List',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif-Bold',
                              fontWeight: FontWeight.bold))),
                  Container(
                    child: Column(
                      children: [
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 0;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 2',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 1;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 3',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 2;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 4(a)',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 3;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 4(b)',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 4;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 5',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 5;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 6',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 6;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 7',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 7;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 8(a)',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 8;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 8(b)',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 9;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 9',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 10;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 10',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'PTSerif',
                                  ),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            expNum = 11;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Modules()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            color: primaryBar,
            padding: EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Subjects()),
                    );
                  },
                  icon: Icon(
                    Icons.home,
                    color: primaryWhite,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnalysisSubjects()),
                    );
                  },
                  icon: Icon(
                    Icons.saved_search_rounded,
                    color: primaryWhite,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  icon: Icon(
                    Icons.account_circle,
                    color: primaryWhite,
                    size: 40,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
