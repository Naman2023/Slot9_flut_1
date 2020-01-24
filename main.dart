import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Just for Fun'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter2() {
    setState(() {
      _counter = Random().nextInt(100);
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

/* void _description(){
  Text("Generates random number between 1 and 100");
} */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'The answer is:',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 22.0, color: Colors.indigo),
              ),
              Container(
                  child: Align(
                alignment: Alignment(0.8, -0.2),
                child: RaisedButton(
                  onPressed: _incrementCounter2,
                  child: Text(
                    "Random",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  textColor: Colors.yellow,
                  color: Colors.green[300],
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 12.0,
                  ),
                ),
              )
              ),
            Container(
              child: Align(
                alignment: Alignment(0.5,1.0),
                child: RaisedButton(
                  onPressed: _incrementCounter1,
                  child: Text(
                    "Increment")
                    ),
                ),
              ),
            ]
          ),
          ),
        ),  // NAMAN JAIN
      );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  return null;
}
