import 'dart:ui';
import 'package:flutter/material.dart';

class BMITheme {
  BMITheme._();

  static const Color purple = Color(0xFF0A0D22);
  static const Color purple400 = Color(0xFF111428);
  static const Color purple300 = Color(0xFF1C1F32);
  static const Color purple200 = Color(0xFF313658);

  static const Color pink = Color(0xFFEB1555);
  static const Color pinkA16 = Color(0x29EB1555);

  static const Color grey = Color(0xFF8D8E98);

  static const Color green = Color(0xFF22E67B);

  static const TextStyle labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: BMITheme.grey,
  );
  static const TextStyle unitTextStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.white,
    fontWeight: FontWeight.w900,
  );
  static const TextStyle boldTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );
}
