import 'package:flutter/material.dart';
import 'package:momsdoctor/home.dart';
import 'package:momsdoctor/questions.dart';
import 'package:momsdoctor/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        '/': (context) => Home(),
        '/questions': (context) => Questions(),
        '/result': (context) => Result(),
      },
    );
  }
}
