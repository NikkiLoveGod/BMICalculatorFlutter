import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/utils/bmi_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumEditor extends StatelessWidget {
  NumEditor({
    @required this.label,
    @required this.num,
    @required this.onIncrease,
    @required this.onDecrease,
  });

  final String label;
  final int num;
  final Function onIncrease;
  final Function onDecrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(this.label, style: BMITheme.labelTextStyle),
        SizedBox(
          height: 15.0,
        ),
        Text(this.num.toString(), style: BMITheme.unitTextStyle),
        SizedBox(
          height: 15.00,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: this.onDecrease,
              icon: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 15.0,
            ),
            RoundIconButton(
              onPressed: this.onIncrease,
              icon: FontAwesomeIcons.plus,
            ),
          ],
        )
      ],
    );
  }
}
