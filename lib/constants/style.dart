import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const Color dark = Colors.black;
const Color white = Colors.white;
Color lightred = Colors.red.shade200;
Color lightbrown = Colors.brown.shade200;
const Color grey = Colors.grey;

Color lightblue = Colors.blue.shade300;

Text customHeading(String text) {
  return Text(
    text,
    style:
        TextStyle(fontSize: 16, color: lightbrown, fontWeight: FontWeight.bold),
  );
}

Container customDivider() {
  return Container(
    width: double.infinity,
    height: 2,
    color: Colors.grey[400],
  );
}

Container img() {
  return Container(
    width: double.infinity - 10,
    // height: 300,
    child: Image.asset(
      "assets/images/img5.jpeg",
      fit: BoxFit.cover,
    ),
  );
}
