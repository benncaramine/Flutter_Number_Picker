import 'package:controlex/Components/menu.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../Components/menu.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: const Text("ReLu"),
        backgroundColor: const Color.fromRGBO(10, 176, 222, 1.0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/relu.jpg'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: NumberPicker(
              axis: Axis.horizontal,
              value: _currentValue,
              minValue: -3,
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
           child: Text('${reluFunction(_currentValue)}',
             style: TextStyle(fontSize: 28),
             textAlign: TextAlign.center,),
         ),
       ))

        ],
      ),
    );
  }

  int reluFunction(int z) {
    return z > 0 ? z : 0;
  }
}
