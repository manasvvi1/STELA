import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/subjects.dart';

class Login extends StatelessWidget {
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
            margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'LOGIN CREDENTIALS',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Mandorlato',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('USERNAME',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primaryButton,
                      border: Border.all(width: 1, color: primaryBar),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                  ),
                )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('PASSWORD',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primaryButton,
                      border: Border.all(width: 1, color: primaryBar),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                  ),
                )),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2.0, color: primaryBar),
                      ),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Subjects()),);
                  },
                ),
              ],
            )),
      ),
    );
  }
}
