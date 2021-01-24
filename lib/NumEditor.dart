import 'package:flutter/material.dart';

import 'BMIThemeColors.dart';

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
            FloatingActionButton(
              onPressed: this.onDecrease,
              child: Icon(Icons.remove),
            ),
            SizedBox(
              width: 15.0,
            ),
            FloatingActionButton(
              onPressed: this.onIncrease,
              child: Icon(Icons.add),
            ),
          ],
        )
      ],
    );
  }
}
