import 'package:flutter/material.dart';

import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';

class BMIRoutes {
  static const String root = '/';
  static const String results = '/results';

  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      BMIRoutes.root: (context) => InputPage(),
      BMIRoutes.results: (context) => ResultsPage(),
    };
  }
}
