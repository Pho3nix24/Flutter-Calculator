import 'package:flutter/material.dart';

class DivideApp extends StatefulWidget {
  @override
  _DivideAppState createState() => _DivideAppState();
}

class _DivideAppState extends State<DivideApp> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double _quotient = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.orange,Colors.yellowAccent]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Number 1",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      controller: num1,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Number 2",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      controller: num2,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _quotient =
                              double.parse(num1.text) / double.parse(num2.text);
                        });
                      },
                      child: Text(
                        "Divide",
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Quotient: " + _quotient.toString(),
                      style: TextStyle(fontSize: 30.0),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
