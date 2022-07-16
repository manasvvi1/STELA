import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/analysisSubjects.dart';
import 'package:stela_app/screens/profile.dart';
import 'package:stela_app/screens/subjects.dart';

void main() {
  runApp(TestAnalysis());
}

class TestAnalysis extends StatelessWidget {
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
            body: Container(
                height: 105,
                margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Test Analysis',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                  ],
                )),
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
            )));
  }
}
