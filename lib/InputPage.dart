import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BMIThemeColors.dart';
import 'LargeIconAndLabel.dart';
import 'Well.dart';

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

  void updateGender(Gender gender) {
    setState(() {
      this.selectedGender = gender;
    });
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
                  child: GestureDetector(
                    onTap: () => updateGender(Gender.male),
                    child: Well(
                      color: this.selectedGender == Gender.male
                          ? BMIThemeColors.purple300
                          : BMIThemeColors.purple400,
                      child: LargeIconAndLabel(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => updateGender(Gender.female),
                    child: Well(
                      color: this.selectedGender == Gender.female
                          ? BMIThemeColors.purple300
                          : BMIThemeColors.purple400,
                      child: LargeIconAndLabel(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Well(
              color: BMIThemeColors.purple300,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Well(
                    color: BMIThemeColors.purple300,
                  ),
                ),
                Expanded(
                  child: Well(
                    color: BMIThemeColors.purple300,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
