
import 'package:flutter/material.dart';
import 'package:fluttercalculator/add.dart';



class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              print("Add");
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>AddView()
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
              print("Subtract");
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
              print("Multiply");
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
              print("Divide");
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
