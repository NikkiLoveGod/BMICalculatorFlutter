import 'package:flutter/material.dart';

class Well extends StatelessWidget {
  Well({
    @required this.color,
    this.child,
    this.onTap,
  });

  final Color color;
  final Widget child;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(child: this.child),
      ),
    );
  }
}
