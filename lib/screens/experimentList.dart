import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
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
              margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Experiment List',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Mandorlato',
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
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
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
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
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
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
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
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
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
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
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
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
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
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
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
                                color: primaryButton,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2.0, color: primaryBar),
                              ),
                              child: Text('Experiment No. 1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Mandorlato',
                                      fontWeight: FontWeight.bold,
                                      color: primaryWhite),
                                  textAlign: TextAlign.center)),
                          onPressed: () {
                            setState(() {
                              expNum = 0;
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
          bottomNavigationBar: Container(
            color: primaryBar,
            padding: EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Subjects()),);
                  },
                  icon: Icon(
                    Icons.home,
                    color: primaryWhite,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnalysisSubjects()),);
                  },
                  icon: Icon(
                    Icons.saved_search_rounded,
                    color: primaryWhite,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()),);
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
