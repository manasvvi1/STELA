import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
    return SplashScreen(
      imageBackground: AssetImage('assets/images/Splash-Background.png'),
      seconds: 6,
      navigateAfterSeconds: new Home(),
      title: new Text(
        'STELA 4.0',
        textScaleFactor: 3,
        style: TextStyle(color: primaryWhite),
      ),
      image: Image.asset(
        'assets/images/STELA.png',
      ),
      loadingText: Text(
        "Loading",
        style: TextStyle(color: primaryWhite),
      ),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
