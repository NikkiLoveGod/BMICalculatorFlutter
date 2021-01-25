import 'package:flutter/material.dart';

import '../utils/BMIThemeColors.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onPress, this.text});

  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        width: double.infinity,
        height: 60.0,
        margin: EdgeInsets.only(top: 10.00),
        color: BMITheme.pink,
        child: Center(
          child: Text(
            this.text,
            style: BMITheme.boldTextStyle,
          ),
        ),
      ),
    );
  }
}
