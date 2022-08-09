import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/constants/experimentDesc.dart';
import 'package:stela_app/screens/modules.dart';
import 'package:stela_app/screens/profile.dart';
import 'package:stela_app/screens/subjects.dart';

var expNum;

class ExperimentList extends StatefulWidget {
  @override
  _ExperimentListState createState() => _ExperimentListState();
}

class _ExperimentListState extends State<ExperimentList> {
  final colChildren = <Widget>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 10; i++) {
      colChildren.add(new ListTile());
    }

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
              // margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Experiment List',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PTSerif-Bold',
                              fontWeight: FontWeight.bold))),
                  Container(
                    child: Column(
                      children: List.generate(
                        expNo.length,
                        (index) {
                          return TextButton(
                            child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 5),
                                margin: EdgeInsets.symmetric(vertical: 7),
                                decoration: BoxDecoration(
                                  color: primaryButton,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 2.0, color: primaryBar),
                                ),
                                child: Text('Experiment No. ' + expNo[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'PTSerif',
                                      color: primaryBar,
                                    ),
                                    textAlign: TextAlign.center)),
                            onPressed: () {
                              expNum = index;
                              getExperiment(index);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Modules()),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            color: primaryBar,
            // padding: EdgeInsets.all(7),
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
                    size: 35,
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
                    size: 35,
                  ),
                ),
              ],
            ),
          ),),
    );
  }
}
