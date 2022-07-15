import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

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
                  onPressed: () {},
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
            ))));
  }
}
