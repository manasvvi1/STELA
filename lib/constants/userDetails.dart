import 'package:cloud_firestore/cloud_firestore.dart';

var userUID;

String name = "",
    email = "",
    enrollmentNo = "",
    contactNum = "",
    password = "",
    confirmPassword = "";

Map<String, dynamic>? data;
var userDetails;

void getDetails() async {
  userDetails = await FirebaseFirestore.instance
      .collection('students')
      .doc(userUID)
      .get(); //gets user

  data = userDetails.data(); //gets details in the form of a map

  name = data?["name"];
  email = data?['emailAddress'];
  enrollmentNo = data?['enrollmentNumber'];
  contactNum = data?['contactNumber'];
}
