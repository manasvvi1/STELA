import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/experimentDesc.dart';
import 'package:stela_app/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() async {
  await Future.delayed(const Duration(milliseconds: 300));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();

  if (defaultTargetPlatform == TargetPlatform.android) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  experimentCollection =
      await FirebaseFirestore.instance.collection("experiments");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Splash Screen',
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
