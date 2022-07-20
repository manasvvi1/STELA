import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  var child;

  var children;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: primaryWhite,
            bottomNavigationBar: BottomAppBar(
              color: primaryBar,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Note: Please mention the following details in your e-mail - Registered Email ID, Name, Roll No., Branch and Year of Admission.',
                    style: TextStyle(color: primaryWhite, fontSize: 15)),
              ),
              elevation: 0,
            ),
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
              child: Container(
                  child: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Column(children: <Widget>[
                        Icon(
                          Icons.contact_support_outlined,
                          color: primaryButton,
                          size: 100,
                        ),
                        Text('CONTACT US',
                            style: TextStyle(
                                color: primaryButton,
                                fontSize: 30,
                                fontFamily: 'PTSerif',
                                fontWeight: FontWeight.bold)),
                        Container(
                          decoration: BoxDecoration(
                            color: primaryWhite,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2.0, color: primaryWhite),
                          ),
                          child: Text('Facing Issues in the App ?',
                              style: TextStyle(
                                  color: primaryBar,
                                  fontSize: 20,
                                  fontFamily: 'PTSerif',
                                  fontWeight: FontWeight.bold)),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(2),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: primaryBar,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 2.0, color: primaryButton),
                          ),
                          child: new InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text('Mail Us',
                                    style: TextStyle(
                                        color: primaryWhite, fontSize: 20)),
                              ),
                              onTap: () => launch('stela4.0igdtuw@gmail.com')),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: primaryWhite,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2.0, color: primaryWhite),
                          ),
                          child: Text(
                            'To clear your queries,\ncontact us through mail.',
                            style: TextStyle(
                                color: primaryBar,
                                fontSize: 20,
                                fontFamily: 'PTSerif',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(2),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: primaryBar,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 2.0, color: primaryButton),
                          ),
                          child: TextButton(
                            child: new Text('Feedback',
                                style: TextStyle(
                                    color: primaryWhite, fontSize: 20)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Feedback()));
                            },
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: primaryWhite,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2.0, color: primaryWhite),
                          ),
                          child: Text(
                            'Your valuable feedback is important for improvement.',
                            style: TextStyle(
                                color: primaryBar,
                                fontSize: 20,
                                fontFamily: 'PTSerif',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(2),
                        ),
                      ]))),
            )));
  }
}

launch(String s) {}

class Feedback extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: primaryWhite,
            bottomNavigationBar: BottomAppBar(
              color: primaryBar,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Note: Please mention the following details in your e-mail - Registered Email ID, Name, Roll No., Branch and Year of Admission.',
                    style: TextStyle(color: primaryWhite, fontSize: 15)),
              ),
              elevation: 0,
            ),
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
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Column(children: <Widget>[
                      Icon(
                        Icons.feedback_outlined,
                        color: primaryButton,
                        size: 100,
                      ),
                      Text('--------------------',
                          style: TextStyle(
                              color: primaryButton,
                              fontSize: 30,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryBar,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryButton),
                        ),
                        child: new InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text('FEEDBACK',
                                  style: TextStyle(
                                      color: primaryWhite, fontSize: 20)),
                            ),
                            onTap: () =>
                                launch('https://forms.gle/96gMetTCcbgK3rkJ8')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryWhite,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryWhite),
                        ),
                        child: Text(
                          'Your valuable feedback is important for improvement.',
                          style: TextStyle(
                              color: primaryBar,
                              fontSize: 20,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(2),
                      ),
                    ])))));
  }
}
