import 'package:flutter/material.dart';

class AddApp extends StatefulWidget {
  @override
  _AddAppState createState() => _AddAppState();
}

class _AddAppState extends State<AddApp> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int _sum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.redAccent, Colors.yellowAccent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: num1,
                      decoration: InputDecoration(
                          hintText: "Number 1",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      controller: num2,
                      decoration: InputDecoration(
                          hintText: "Number 2",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          //var a=num1.text;
                          //var b=num2.text;
                          _sum = int.parse(num1.text) + int.parse(num2.text);
                        });
                      },
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Sum: " + _sum.toString(),
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
