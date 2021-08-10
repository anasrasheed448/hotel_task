import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/widgets/custom_button.dart';

import 'homepage.dart';

class StyleQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2, child: img()),
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customHeading("Style Quiz"),
                Icon(
                  Icons.handyman,
                  size: 28,
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
                CustomBtn(
                  "Take Style quiz",
                  Colors.red.shade400,
                  textColor: Colors.white,
                  borderRadius: 20,
                  horizontal: 35,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
