import 'package:bmi_calculator/BMIThemeColors.dart';
import 'package:flutter/material.dart';

import 'BottomButton.dart';
import 'Well.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Widget getBmiClassification() {
    return Text(
      'OVERWEIGHT',
      style: BMITheme.labelTextStyle.copyWith(
        color: BMITheme.green,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  String getBmiDescription() {
    return 'You have a higher than normal body weight. Try to exercise more.';
  }

  double bmi = 28.443425;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your result',
                    style: BMITheme.headingTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Well(
                  color: BMITheme.purple300,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        getBmiClassification(),
                        Text(
                          this.bmi.toStringAsPrecision(3),
                          style: TextStyle(
                            fontSize: 110.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          getBmiDescription(),
                          textAlign: TextAlign.center,
                          style: BMITheme.labelTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              BottomButton(
                text: 'RE-CALCULATE',
                onPress: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
