import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMIThemeColors.dart';
import 'InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: BMITheme.purple,
        accentColor: BMITheme.pink,
        scaffoldBackgroundColor: BMITheme.purple,
      ),
      home: InputPage(),
    );
  }
}
