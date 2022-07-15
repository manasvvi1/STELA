import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/analysisSubjects.dart';
import 'package:stela_app/screens/experimentList.dart';
import 'package:stela_app/screens/profile.dart';

class Subjects extends StatefulWidget {
  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
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
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Container(
                    height: 110,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: primaryButton,
                      border: Border.all(
                        color: primaryBar,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text('Artificial Intelligence',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Mandorlato',
                                color: primaryWhite)),
                        Text('M. Tech.',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Mandorlato',
                                color: primaryWhite)),
                        Text('>>>',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Mandorlato',
                                color: primaryWhite))
                      ],
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExperimentList()),);
                },
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
