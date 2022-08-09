import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/login.dart';
import 'package:stela_app/screens/signup.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryBar,
        body: Center(
          child: Container(
            // margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset('assets/images/STELA.png'),
                      TextButton(
                        child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 2.0, color: primaryButton),
                            ),
                            child: Text(
                              'LOG IN',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'PTSerif-Bold',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 2.0, color: primaryButton),
                            ),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'PTSerif-Bold',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
