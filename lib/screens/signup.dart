import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/constants/userDetails.dart';
import 'package:stela_app/screens/subjects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

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
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text('SIGN UP',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      enrollmentNo = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Enrollment Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      contactNum = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Contact Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Email ID",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    onChanged: (value) {
                      confirmPassword = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        decoration: BoxDecoration(
                          color: primaryButton,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryBar),
                        ),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold,
                              color: primaryBar),
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () async {
                      if (password == confirmPassword) {
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);

                          final userUID =
                              FirebaseAuth.instance.currentUser?.uid;

                          FirebaseFirestore.instance
                              .collection('students')
                              .doc(userUID)
                              .set({
                            'name': name,
                            'contactNumber': contactNum,
                            'emailAddress': email,
                            'enrollmentNumber': enrollmentNo,
                            'password': password,
                          });
                          if (newUser != null) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Subjects()),
                            );
                          }
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                  ),
                  // SizedBox(
                  //   height: 40,
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
