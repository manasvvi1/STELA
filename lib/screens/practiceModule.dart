import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/experimentList.dart';
import 'package:stela_app/screens/profile.dart';
import 'package:stela_app/screens/subjects.dart';
import 'package:stela_app/constants/experimentDesc.dart';

class PracticeModule extends StatefulWidget {
  @override
  State<PracticeModule> createState() => _PracticeModuleState();
}

class _PracticeModuleState extends State<PracticeModule> {
  List<bool> isVisible = [false, false, false, false, false, false, false, false, false, false];

  void toggleVisibility(int index){
    setState(() {
      isVisible[index] = !isVisible[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text('PRACTICE QUESTIONS\nExperiment ' + expNo[expNum],
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'PTSerif-Bold',
                            fontWeight: FontWeight.bold
                        ),
                      textAlign: TextAlign.center,
                    ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: List.generate(practiceQues.length,
                        (index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(practiceQues[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              setState(() {
                                isVisible[index] = !isVisible[index];
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(0),
                              width: double.infinity,
                              padding: EdgeInsets.all(8.0),
                              child: Text('Check Answer',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: primaryWhite,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              decoration: BoxDecoration(
                                color: primaryBar,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          Visibility(
                            child: Text('Answer: ' + practiceAns[index],
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            visible: isVisible[index],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      );
                        }
                    ),
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