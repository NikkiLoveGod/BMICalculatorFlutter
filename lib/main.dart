import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMIThemeColors.dart';
import 'Well.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: BMIThemeColors.purple,
        scaffoldBackgroundColor: BMIThemeColors.purple,
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Well(),
                Well(),
              ],
            ),
          ),
          Well(),
          Expanded(
            child: Row(
              children: [
                Well(),
                Well(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
