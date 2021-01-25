import 'package:bmi_calculator/utils/bmi_theme.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.onPressed, this.icon});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      fillColor: BMITheme.purple200,
      shape: CircleBorder(),
      elevation: 2.0,
      child: Icon(this.icon),
      constraints: BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
