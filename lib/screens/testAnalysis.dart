import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xffEDC7C7),
          body: Container(
              height: 105,
              margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Test Analysis', style: TextStyle(fontSize: 25, fontFamily: 'Mandorlato', fontWeight: FontWeight.bold)),
                ],
              )
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  Icons.saved_search_rounded,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  Icons.account_circle,
                  color: Colors.black,
                  size: 40,
                ),
              ],
            ),
          )
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
