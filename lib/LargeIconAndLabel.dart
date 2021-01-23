import 'package:flutter/material.dart';

import 'BMIThemeColors.dart';

const iconSize = 80.0;
const iconLabelGap = 20.0;
const labelStyle = TextStyle(
  fontSize: 18.0,
  color: BMIThemeColors.grey,
);

class LargeIconAndLabel extends StatelessWidget {
  LargeIconAndLabel({
    @required this.icon,
    @required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: iconSize,
        ),
        SizedBox(
          height: iconLabelGap,
        ),
        Text(
          this.text,
          style: labelStyle,
        )
      ],
    );
  }
}
