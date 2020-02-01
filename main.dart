import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Calculator'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          margin: new EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: "Enter first operand ",
                              hintStyle: TextStyle(
                                fontSize: 15.0,
                              )),
                          onSubmitted: (String text) {},
                          cursorColor: Colors.blue,
                          showCursor: true,
                          cursorWidth: 1.0,
                        ))),
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: "Enter second operand ",
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                          onSubmitted: (String text) {},
                          cursorColor: Colors.blue,
                          showCursor: true,
                          cursorWidth: 1.0,
                        )))
              ]),
              /* Row(
                children: <Widget>[
                    
                ],
              ), */
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "**result**",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[SizedBox(height: 30.0)],
              ),
              Row(children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {},
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {},
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                )
              ]),
              Row(children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {},
                    child: Text(
                      "x",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {},
                    child: Text(
                      "/",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                )
              ]),
              Row(children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {},
                    child: Text(
                      "C",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {},
                    child: Text(
                      "=",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ));
  }
}
