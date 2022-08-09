import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/contactUs.dart';
import 'package:stela_app/screens/subjects.dart';
import 'package:stela_app/constants/userDetails.dart';

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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        title: Text('STELA'),
        backgroundColor: primaryBar,
        // leading: TextButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     child: Icon(
        //       Icons.arrow_back,
        //       color: primaryWhite,
        //     )),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Icon(
                Icons.account_circle_outlined,
                color: primaryButton,
                size: 100,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: primaryWhite,
                  // borderRadius: BorderRadius.circular(10),
                  // border: Border.all(width: 2.0, color: primaryBar),
                ),
                child: Text(name,
                    style: TextStyle(
                        color: primaryBar,
                        fontSize: 15,
                        fontFamily: 'PTSerif-ExtraBold',
                        fontWeight: FontWeight.bold)),
              ),
              // Container(
              //   child: Text('__________',
              //       style: TextStyle(
              //           color: primaryButton,
              //           fontSize: 50,
              //           fontFamily: 'PTSerif',
              //           fontWeight: FontWeight.bold)),
              //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              //   alignment: Alignment.center,
              //   padding: EdgeInsets.all(2),
              // ),
                  SizedBox(
                    height: 30,
                  ),
              Container(
                decoration: BoxDecoration(
                  color: primaryWhite,
                  // borderRadius: BorderRadius.circular(10),
                  // border: Border.all(width: 2.0, color: primaryBar),
                ),
                child: Text('Enrollment No. : ' + enrollmentNo,
                    style: TextStyle(
                        color: primaryBar,
                        fontSize: 15,
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.bold)),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryWhite,
                  // borderRadius: BorderRadius.circular(10),
                  // border: Border.all(width: 2.0, color: primaryBar),
                ),
                child: Text('Email ID : ' + email,
                    style: TextStyle(
                        color: primaryBar,
                        fontSize: 15,
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.bold)),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryWhite,
                  // borderRadius: BorderRadius.circular(10),
                  // border: Border.all(width: 2.0, color: primaryBar),
                ),
                child: Text('Contact Number : ' + contactNum,
                    style: TextStyle(
                        color: primaryBar,
                        fontSize: 15,
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.bold)),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryBar,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2.0, color: primaryBar),
                  ),
                  child: Text('Contact Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'PTSerif',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 0),
                ),
              )
            ]),
          )),
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
          ),
    ));
  }
}
