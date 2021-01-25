import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/well.dart';
import 'package:bmi_calculator/utils/bmi_calculator.dart';
import 'package:bmi_calculator/utils/bmi_theme.dart';
import 'package:flutter/material.dart';

class ResultsPageArguments {
  ResultsPageArguments({@required this.bmiCalculator});

  final BmiCalculator bmiCalculator;
}

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultsPageArguments args = ModalRoute.of(context).settings.arguments;

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
                        Text(
                          args.bmiCalculator.getClassification(),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: BMITheme.green,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          args.bmiCalculator.getBmi(),
                          style: TextStyle(
                            fontSize: 110.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          args.bmiCalculator.getDescription(),
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
