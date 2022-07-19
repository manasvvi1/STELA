import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

class AssessmentModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryWhite,
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Text('ASSESSMENT MODULE',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                    margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('The Lion is known as the king of the jungle?',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Here",
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('Name the National bird of India?',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Here",
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('What is the National Anthem of India?',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Here",
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('What is the National song of India?',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Here",
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('Baby frog is known as.......',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Here",
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text(
                        'How many consonants are there in the English alphabet?',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Here",
                    ),
                  )),
                  TextButton(
                    // padding: EdgeInsets.all(1),
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: primaryButton,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryBar),
                        ),
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {},
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
