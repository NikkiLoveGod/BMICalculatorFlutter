import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils/bmi_theme.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage()
      },
    );
  }
}
