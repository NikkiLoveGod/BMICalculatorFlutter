import 'dart:math';

import 'package:flutter/cupertino.dart';

class BmiCalculator {
  BmiCalculator({@required this.height, @required this.weight}) {
    this._calcBmi();
  }

  int height;
  int weight;
  double _bmi;

  void _calcBmi() {
    this._bmi = this.weight / pow(this.height / 100, 2);
  }

  String getBmi() {
    return this._bmi.toStringAsFixed(1);
  }

  String getClassification() {
    if (this._bmi <= 18.5) {
      return 'UNDERWEIGHT';
    } else if (this._bmi <= 25) {
      return 'NORMAL';
    }

    return 'OVERWEIGHT';
  }

  String getDescription() {
    if (this._bmi <= 18.5) {
      return 'You have a lower than normal body weight. You can eat some more.';
    } else if (this._bmi <= 25) {
      return 'You have a normal body weight. Good job!';
    }

    return 'You have a higher than normal body weight. Try to exercise some more.';
  }
}
