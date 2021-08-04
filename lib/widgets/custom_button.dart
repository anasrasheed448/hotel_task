import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn(this.text, this.btnColor,
      {this.borderColor = Colors.transparent, this.textColor = Colors.black});
  final String text;
  final Color btnColor;
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
        primary: btnColor,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: borderColor)),
      ),
    );
  }
}
