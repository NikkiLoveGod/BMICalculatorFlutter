import 'package:bmi_calculator/utils/bmi_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils/bmi_theme.dart';

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
      initialRoute: BMIRoutes.root,
      routes: BMIRoutes.routes,
    );
  }
}
