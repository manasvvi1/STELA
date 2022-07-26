import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/analysisSubjects.dart';
import 'package:stela_app/screens/profile.dart';
import 'package:stela_app/screens/subjects.dart';

void main() {
  runApp(PracticeModule());
}

class PracticeModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryWhite,
        appBar: AppBar(
          title: Text('STELA'),
          backgroundColor: primaryBar,
          leading: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: primaryWhite,
              )),
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Text('PRACTICE MODULE',
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
                ],
              ),
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
              // IconButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => AnalysisSubjects()),
              //     );
              //   },
              //   icon: Icon(
              //     Icons.saved_search_rounded,
              //     color: primaryWhite,
              //     size: 40,
              //   ),
              // ),
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
        ),
      ),
    );
  }
}
