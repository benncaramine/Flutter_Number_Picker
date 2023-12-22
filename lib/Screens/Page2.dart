import 'dart:math';

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../Components/menu.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Tanh"),
        backgroundColor: Color.fromRGBO(10, 176, 222, 1.0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/tanh.jpg'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: NumberPicker(
              axis: Axis.horizontal,
              value: _currentValue,
              minValue: -10,
              maxValue: 10,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ),
          Expanded(child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('${calculateR(_currentValue)}',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,),
            ),
          ))
        ],
      ),
    );
  }

  String calculateR(int z) {
    double numerator = exp(z) - exp(-z);
    double denominator = exp(z) + exp(-z);
    double result = numerator / denominator;
    return result.toStringAsFixed(4);
  }
}
