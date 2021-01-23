import 'package:flutter/material.dart';

import 'BMIThemeColors.dart';

class Well extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: BMIThemeColors.purple400,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
