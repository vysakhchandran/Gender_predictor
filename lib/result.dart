import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({Key key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Map data ={};
  @override
  Widget build(BuildContext context) {
        data = ModalRoute.of(context).settings.arguments;
        if (data['boy'] == data['girl']) {}

    return Scaffold(
 //     appBar: AppBar(
  
 // backgroundColor: Colors.pink,
  //elevation: 0,
  //title: Text("Ammi's Baby Gender Predictor",
  //style: TextStyle(
   //   fontSize: 20,
     // fontWeight: FontWeight.w700
  //),),
//),
body: Column(
  children: <Widget>[
    SafeArea(
          child: Container(
       margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        alignment: Alignment.center,
       // width: 200,
       // height: 80,
        color: Colors.pink[500],
      child: Text(
        "Congratulations!!",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
        ),
      ),
    )
  ],
)
       
    );
  }
}