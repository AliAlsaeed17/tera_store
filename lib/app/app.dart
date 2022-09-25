import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  //private named constructor
  MyApp._internal();

  static final MyApp _instance = MyApp._internal(); //singelton

  factory MyApp() => _instance; //factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
