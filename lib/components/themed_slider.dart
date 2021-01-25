import 'package:bmi_calculator/utils/bmi_theme.dart';
import 'package:flutter/material.dart';

class ThemedSlider extends StatelessWidget {
  ThemedSlider({
    @required this.value,
    @required this.onChanged,
    @required this.min,
    @required this.max,
  });

  final double value;
  final Function onChanged;
  final double min;
  final double max;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white,
        inactiveTrackColor: BMITheme.grey,
        trackHeight: 2.0,
        thumbColor: BMITheme.pink,
        overlayColor: BMITheme.pinkA16,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.00),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
      ),
      child: Slider(
        value: this.value,
        onChanged: this.onChanged,
        min: this.min,
        max: this.max,
      ),
    );
  }
}
