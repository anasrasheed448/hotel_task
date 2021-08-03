import 'package:flutter/material.dart';
import 'package:task01/widgets/custom_button.dart';

class StyleQuizScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customHeading("Style Quiz"),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        children: [
                          TextSpan(
                            text:
                                "Which one are you? we'll help you find your style\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living",
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomBtn("Take the Style quiz", Colors.blue.shade900),
                ],
              ),
            );
  }
  Text customHeading(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 16, color: Colors.amber[200], fontWeight: FontWeight.bold),
  );
}
}