import 'package:flutter/material.dart';
import 'package:fluttercalculator/add.dart';
import 'package:fluttercalculator/view.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: View()
      ),
    );
  }
}
