import 'package:flutter/material.dart';

import '../Components/menu.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color.fromRGBO(10, 176, 222, 1.0),
      ),
      drawer: Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 3),
          const Text(
            "EMSI",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Column(
              children: [Image.asset(
                'assets/images/prof.jpg',
                height: 250,
              ),]
            ),
          ),
        ],
      ),
    );
  }
}
