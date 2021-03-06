
import 'package:flutter/material.dart';
import 'package:fluttercalculator/add.dart';
import 'package:fluttercalculator/divide.dart';
import 'package:fluttercalculator/multiply.dart';
import 'package:fluttercalculator/subtract.dart';



class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purpleAccent,Colors.blue]
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              print("Add");
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>AddApp()
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15.0)),
              width: double.infinity,
              height: 50.0,
              margin: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SubtractApp()
              ));

              //print("Subtract");
            },
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Subtract",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>MultiplyApp()
              ));
              //print("Multiply");
            },
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Multiply",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>DivideApp()
              ));
              //print("Divide");
            },
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Divide",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
