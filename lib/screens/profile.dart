import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/analysisSubjects.dart';
import 'package:stela_app/screens/subjects.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var child;

  var children;

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
                child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(children: <Widget>[
                Icon(
                  Icons.account_circle_outlined,
                  color: primaryButton,
                  size: 200,
                ),
                Text('User Name',
                    style: TextStyle(
                        color: primaryButton,
                        fontSize: 20,
                        fontFamily: 'Mandorlato-ExtraBold',
                        fontWeight: FontWeight.bold)),
                Container(
                  child: Text('-------------',
                      style: TextStyle(
                          color: primaryButton,
                          fontSize: 50,
                          fontFamily: 'Mandorlato',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryBar,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2.0, color: primaryBar),
                  ),
                  child: Text('Course and Year',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Mandorlato',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryBar,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2.0, color: primaryBar),
                  ),
                  child: Text('Assessments taken',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Mandorlato',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryBar,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2.0, color: primaryBar),
                  ),
                  child: Text('Analysis',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Mandorlato',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryBar,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2.0, color: primaryBar),
                  ),
                  child: Text('Level',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Mandorlato',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
              ]),
            )),
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
            ),
        ));
  }
}
