import 'package:flutter/material.dart';
import 'Home.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 1- constructor 2- init state 3- build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}








