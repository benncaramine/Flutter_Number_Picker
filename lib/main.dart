import 'package:controlex/Screens/Page1.dart';
import 'package:controlex/Screens/Page2.dart';
import 'package:controlex/Screens/Page3.dart';
import 'package:flutter/material.dart';
import 'Screens/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
        "page1": (context)=> Page1(),
        "page2" : (context) => Page2(),
        "page3" : (context) => Page3()

      },
    );
  }
}