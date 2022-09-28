import 'package:flutter/material.dart';
import 'package:tera_store/presentation/resources/routes_manager.dart';
import 'package:tera_store/presentation/resources/themes_manager.dart';

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
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
    );
  }
}
