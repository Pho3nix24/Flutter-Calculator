import 'package:flutter/material.dart';


class MultiplyApp extends StatefulWidget {
  @override
  _MultiplyAppState createState() => _MultiplyAppState();
}

class _MultiplyAppState extends State<MultiplyApp> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _prod=0;
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
              colors: [Colors.yellowAccent,Colors.blue]
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
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                      ),
                      controller: num1,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Number 2",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                      ),
                      controller: num2,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FlatButton(
                      onPressed: (){
                        setState(() {
                          _prod=int.parse(num1.text)*int.parse(num2.text);
                        });
                      },
                      child: Text(
                        "Multiply",
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Product: "+_prod.toString(),
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
