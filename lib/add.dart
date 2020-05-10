import 'package:flutter/material.dart';

class AddView extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: num1,
                decoration: InputDecoration(hintText: "Number 1"),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: num2,
                decoration: InputDecoration(hintText: "Number 2"),
              ),
              SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 35.0,
                  width: double.infinity,
                  color: Colors.lightGreen,
                  child: Center(
                    child: Text(
                      "Add",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
