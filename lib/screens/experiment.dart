import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/constants/experimentDesc.dart';
import 'package:stela_app/screens/experimentList.dart';
import 'package:stela_app/screens/profile.dart';
import 'package:stela_app/screens/subjects.dart';

class Experiment extends StatelessWidget {
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
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Experiment No. ' + expNo[expNum],
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold))), // Heading
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: primaryButton,
                    ),
                    child: Text(
                      'AIM',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ), // AIM heading
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Flexible(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              aim,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), // AIM text
                  if (procedure != "") ...[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: primaryButton,
                      ),
                      width: double.infinity,
                      child: Text('PROCEDURE',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                    ), // PROCEDURE heading
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Flexible(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                procedure,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ], // PROCEDURE text
                  if (algorithm != "") ...[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: primaryButton,
                      ),
                      width: double.infinity,
                      child: Text('ALGORITHM',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                    ), // ALGORITHM heading
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Flexible(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                algorithm,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ], // ALGORITHM text
                  if (program != "") ...[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: primaryButton,
                      ),
                      width: double.infinity,
                      child: Text('PROGRAM',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                    ), // PROGRAM heading
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Flexible(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                program,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), // PROGRAM text
                  ],
                  if (result != "") ...[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: primaryButton,
                      ),
                      width: double.infinity,
                      child: Text('RESULT',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                    ), // RESULT heading
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Flexible(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                result,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), // RESULT text
                  ]
                ],
              )),
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
