import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn(
    this.text,
    this.btnColor, {
    this.borderColor = Colors.transparent,
    this.textColor = Colors.black,
    this.borderRadius = 1,
    this.elevation = 0,
    this.horizontal=30,
    this.vertical=10,
  });
  final String text;
  final Color btnColor;
  final Color borderColor;
  final Color textColor;
  final double borderRadius;
  final double elevation;
  final double horizontal;
  final double vertical;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        primary: btnColor,
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(color: borderColor)),
      ),
    );
  }
}
