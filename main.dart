import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
} //Naman

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //Naman

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController eCtrl = TextEditingController();
  TextEditingController vCtrl = TextEditingController();

  double _firstop = 0;
  double _secondop = 0;
  double _res = 0;
  double _restemp = 0;
  String _operator = ' ';

  void _add() {
    setState(() {
      _restemp = _firstop + _secondop;
    });
  }//Naman

  void _diff() {
    setState(() {
      _restemp = _firstop - _secondop;
    });
  }//Naman

  void _product() {
    setState(() {
      _restemp = _firstop * _secondop;
    });
  }//Naman

  void _quotient() {
    setState(() {
      _restemp = _firstop / _secondop;
    });
  }//Naman

  void _clear() {
    setState(() {
      _firstop = 0;
      _secondop = 0;
      _res = 0;
      _restemp = 0;
      _operator = ' ';
    });
  }//Naman

  _resdisp() {
    setState(() {
      _res = _restemp;
      return _res;
    });
  }//Naman

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
                          controller: eCtrl,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(
                              hintText: "Enter first operand ",
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                              )),
                          inputFormatters: [
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                          onChanged: (String text) {
                            _firstop = double.parse(text);
                          },
                          onSubmitted: (String text) {
                            _firstop = double.parse(text);
                          },
                          cursorColor: Colors.blue,
                          showCursor: true,
                          cursorWidth: 1.0,
                        ))),
              ]), //Naman
              Row(children: <Widget>[
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: vCtrl,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(
                            hintText: "Enter second operand ",
                            hintStyle: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          inputFormatters: [
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                          onChanged: (String text) {
                            _secondop = double.parse(text);
                          },
                          onSubmitted: (String text) {
                            _secondop = double.parse(text);
                          },
                          cursorColor: Colors.blue,
                          showCursor: true,
                          cursorWidth: 1.0,
                        )))
              ]), //Naman
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: new EdgeInsets.symmetric(horizontal:20.0),
                      child: Text("$_operator",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),)
                    )
                  )
                ],
              ),//Naman
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "$_res",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  )
                ],
              ),//Naman
              Row(
                children: <Widget>[SizedBox(height: 30.0)],
              ),//Naman
              Row(children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {
                      _add();
                      _operator = '+';
                    },
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
                    onPressed: () {
                      _diff();
                      _operator = '-';
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                )
              ]), //Naman
              Row(children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {
                      _product();
                      _operator = 'x';
                    },
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
                    onPressed: () {
                      _quotient();
                      _operator = '/';
                    },
                    child: Text(
                      "/",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                )
              ]), //Naman
              Row(children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    onPressed: () {
                      _clear();
                      eCtrl.clear();
                      vCtrl.clear();
                    },
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
                    onPressed: _resdisp,
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
        )); //Naman
  } //Naman
}
