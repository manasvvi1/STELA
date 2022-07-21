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
            margin: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Text('SIGN UP',
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'PTSerif',
                            fontWeight: FontWeight.bold)),
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('NAME',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                    ),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('EMAIL ID',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Email Id",
                    ),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('ENROLLMENT NUMBER',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    onChanged: (value) {
                      enrollmentNo = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Enrollment Number",
                    ),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('COURSE AND BRANCH',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    onChanged: (value) {
                      branch = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Course and Branch",
                    ),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('CONTACT NUMBER',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    onChanged: (value) {
                      contactNum = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Contact Number",
                    ),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('PASSWORD',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                    ),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('CONFIRM PASSWORD',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      confirmPassword = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                    ),
                  )),
                  TextButton(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: primaryButton,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryBar),
                        ),
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold),
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
                            'courseAndBranch': branch,
                            'password': password
                          });
                          if (newUser != null) {
                            Navigator.push(
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
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
