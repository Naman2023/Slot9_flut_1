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
  String _variable1 = '';

  void _randomletter(){
    setState((){
      _variable1 = randomAlpha(5);
    });//Sharan
  }
  

  void _randomeven(){
    setState((){
      _counter = Random().nextInt(100/2)*2;
    });
  }  //sharan

  void _randombool(){
    setState((){
      _counter = 0;
      _counter = nextBool();
    });
  } //sharan


  void _valueclear(){
    setState((){
       _counter = 0; 
    });
  }//Sharan

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  } //sharan 

  void _incrementCounter2() {
    setState(() {
      _counter = Random().nextInt(100);
    });//Naman
  }

  void _incrementCounter1() {
    setState(() {
      _counter++;
    }); //Naman
  }

/* void _description(){
  Text("Generates random number between 1 and 100");
} */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.cyan[300],
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
              ),//Naman
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
              ),     //Naman

               Container(
                   child: Align(
                 alignment: Alignment(0.8, 0.2),
                 child: RaisedButton(
                   onPressed: _randomeven,
                   child: Text(
                     "Random Even",
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
              ),  //sharan

            Container(
                   child: Align(
                 alignment: Alignment(1.0, -1.0),
                 child: RaisedButton(
                   onPressed: _randombool,
                   child: Text(
                     "Random Boolean",
                     style: TextStyle(fontSize: 15.0),
                   ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                   textColor: Colors.blue,
                   color: Colors.red[300],
                   padding: EdgeInsets.symmetric(
                     vertical: 12.0,
                     horizontal: 12.0,
                   ), 
                 ),
               )
              ), //sharan

            Container(
                   child: Align(
                 alignment: Alignment(0.8, -0.2),
                 child: RaisedButton(
                   onPressed: _decrementCounter,
                   child: Text(
                     "Decrement",
                     style: TextStyle(fontSize: 15.0),
                   ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                   textColor: Colors.red,
                   color: Colors.yellow[300],
                   padding: EdgeInsets.symmetric(
                     vertical: 12.0,
                     horizontal: 12.0,
                   ), 
                 ),
               )
              ),// sharan

            Container(
              child: Align(
                alignment: Alignment(0.5,1.0),
                child: RaisedButton(
                  onPressed: _incrementCounter1,
                  child: Text(
                    "Increment"
                    )
             
                    ),
                ),
              ),//Naman
            Container(
              child: Align(
	              alignment:Alignment(1.0,2.0),
	              child: RaisedButton(
	                onPressed: _valueclear,        
	                child: Text(
	                  "Clear");
                  shape: RoundedRectangeBorder(
                    borderRadius: BorderRadius.circular(20),
                   ),
                   textColor: Colors.blue,
                   color: Colors.red[300],
                   padding: EdgeInsets.symmetric(
                     vertical: 15.0,
                     horizontal: 15.0,
                      )  
	                  ),              //Sharan
	              ),
              ),
            Container(
              child: Align(
                alignment:Alignment(2.0,3.0),
                child: RaisedButton(
                  onPressed: _randomletter,
                  child: Text("Random LEtter");
                  shape: RoundedrectangleBorder(
                    borderRadius: BorderRadius.circular,
                  ),
                  textColor: Colors.blue,
                  color: Colors.red[300], 
                  padding: EdgeInsets.symmetric(
                     vertical: 15.0,
                     horizontal: 15.0,
                  )                               
                )
              )
            ),//sharan
            ]
          ),
          ),
        ),  // Naman
      );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  return null;
}