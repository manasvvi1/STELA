import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/assessmentModule.dart';
import 'package:stela_app/screens/experiment.dart';
import 'package:stela_app/screens/practiceModule.dart';
import 'package:stela_app/screens/profile.dart';
import 'package:stela_app/screens/subjects.dart';

class Modules extends StatefulWidget {
  @override
  _ModulesState createState() => _ModulesState();
}

class _ModulesState extends State<Modules> {
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
          body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  //Container(padding: EdgeInsets.all(10), child: Text('STELA', style: TextStyle(color: Colors.white, fontSize: 35, fontFamily: 'PTSerif-ExtraBold', fontWeight: FontWeight.bold))),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          margin: EdgeInsets.all(30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image(
                              image: NetworkImage(
                                  'https://png.pngitem.com/pimgs/s/77-775088_take-the-free-assessment-findings-icon-png-transparent.png'),
                            ),
                          ),
                        ),
                        TextButton(
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: primaryBar,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 2.0, color: primaryButton),
                              ),
                              child: Text(
                                'Learning Module',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'PTSerif-Bold',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Experiment()),
                            );
                          },
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                margin: EdgeInsets.all(30),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(150),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://w7.pngwing.com/pngs/303/119/png-transparent-evaluation-system-project-encapsulated-postscript-listed-miscellaneous-angle-text.png'),
                                  ),
                                ),
                              ),
                              TextButton(
                                child: Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    decoration: BoxDecoration(
                                      color: primaryBar,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 2.0, color: primaryButton),
                                    ),
                                    child: Text(
                                      'Practice Module',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'PTSerif-Bold',
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PracticeModule()),
                                  );
                                },
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 50,
                                      margin: EdgeInsets.all(30),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(150),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://w7.pngwing.com/pngs/827/120/png-transparent-educational-assessment-test-computer-icons-risk-assessment-assess-angle-text-logo-thumbnail.png'),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      child: Container(
                                          width: double.infinity,
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                          decoration: BoxDecoration(
                                            color: primaryBar,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                width: 2.0,
                                                color: primaryButton),
                                          ),
                                          child: Text(
                                            'Assessment',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'PTSerif-Bold',
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          )),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AssessmentModule()),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
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
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => AnalysisSubjects()),
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
          )),
    );
  }
}
