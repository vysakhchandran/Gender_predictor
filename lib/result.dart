import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({Key key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  
  backgroundColor: Colors.pink,
  elevation: 0,
  title: Text("Ammi's Baby Gender Predictor",
  style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700
  ),),
),

       
    );
  }
}