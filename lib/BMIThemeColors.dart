import 'dart:ui';
import 'package:flutter/material.dart';

class BMITheme {
  BMITheme._();

  static const Color purple = Color(0xFF0A0D22);
  static const Color purple400 = Color(0xFF111428);
  static const Color purple300 = Color(0xFF1C1F32);
  static const Color purple200 = Color(0xFF1D1F33);

  static const Color pink = Color(0xFFEB1555);
  static const Color pinkA16 = Color(0x29EB1555);

  static const Color grey = Color(0xFF8D8E98);

  static const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: BMITheme.grey,
  );
  static const unitTextStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.white,
    fontWeight: FontWeight.w900,
  );
}
