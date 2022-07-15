import 'package:flutter/material.dart';
import 'package:stela_app/screens/home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Image.asset('assets/images/STELA.png'),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/MyApp-Background.png'),
        fit: BoxFit.cover,
      )),
    ));
  }
}
