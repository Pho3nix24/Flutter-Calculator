import 'package:flutter/material.dart';

class SubtractApp extends StatefulWidget {
  @override
  _SubtractAppState createState() => _SubtractAppState();
}

class _SubtractAppState extends State<SubtractApp> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int _dif = 0;

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
                  colors: [Colors.blueAccent, Colors.cyanAccent])),
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
                          hintText: "Number 1", border: OutlineInputBorder()),
                      controller: num1,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Numbern 2", border: OutlineInputBorder()),
                      controller: num2,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _dif = int.parse(num1.text) - int.parse(num2.text);
                        });
                      },
                      child: Text(
                        "Subtract",
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Difference: " + _dif.toString(),
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
