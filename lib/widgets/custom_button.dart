import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn(this.text, this.color,
      {this.borderColor = Colors.transparent, this.textColor = Colors.black});
  final String text;
  final Color color;
  final Color borderColor;
  final Color textColor;
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
        primary: color,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: borderColor)),
      ),
    );
  }
}
