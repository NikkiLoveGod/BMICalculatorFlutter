import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/large_icon_and_label.dart';
import 'package:bmi_calculator/components/num_editor.dart';
import 'package:bmi_calculator/components/themed_slider.dart';
import 'package:bmi_calculator/components/well.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/utils/bmi_calculator.dart';
import 'package:bmi_calculator/utils/bmi_routes.dart';
import 'package:bmi_calculator/utils/bmi_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 62;
  int age = 20;

  void updateGender(Gender gender) {
    setState(() {
      this.selectedGender = gender;
    });
  }

  void updateHeight(double height) {
    setState(() {
      this.height = height.toInt();
    });
  }

  void displayResults(BuildContext context) {
    BmiCalculator calc = BmiCalculator(
      height: this.height,
      weight: this.weight,
    );

    final resultsArguments = ResultsPageArguments(bmiCalculator: calc);

    Navigator.pushNamed(
      context,
      BMIRoutes.results,
      arguments: resultsArguments,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Well(
                    onTap: () => updateGender(Gender.male),
                    color: this.selectedGender == Gender.male
                        ? BMITheme.purple300
                        : BMITheme.purple400,
                    child: LargeIconAndLabel(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: Well(
                    onTap: () => updateGender(Gender.female),
                    color: this.selectedGender == Gender.female
                        ? BMITheme.purple300
                        : BMITheme.purple400,
                    child: LargeIconAndLabel(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Well(
              color: BMITheme.purple300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: BMITheme.labelTextStyle,
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: BMITheme.unitTextStyle,
                      ),
                      Text('cm', style: BMITheme.labelTextStyle),
                    ],
                  ),
                  ThemedSlider(
                    value: this.height.toDouble(),
                    onChanged: updateHeight,
                    min: 100,
                    max: 230,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Well(
                    color: BMITheme.purple300,
                    child: NumEditor(
                      onIncrease: () => setState(() {
                        this.weight++;
                      }),
                      onDecrease: () => setState(() {
                        this.weight--;
                      }),
                      label: 'WEIGHT',
                      num: this.weight,
                    ),
                  ),
                ),
                Expanded(
                  child: Well(
                    color: BMITheme.purple300,
                    child: NumEditor(
                      onIncrease: () => setState(() {
                        this.age++;
                      }),
                      onDecrease: () => setState(() {
                        if (this.age <= 18) {
                          return;
                        }

                        this.age--;
                      }),
                      label: 'AGE',
                      num: this.age,
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            onPress: () => this.displayResults(context),
            text: 'CALCULATE YOUR BMI',
          )
        ],
      ),
    );
  }
}
