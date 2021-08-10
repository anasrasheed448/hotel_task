import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/widgets/custom_button.dart';

class StyleQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 3, child: img()),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customHeading("Style Quiz"),
                Icon(
                  Icons.handyman,
                  size: 30,
                ),
                Text.rich(
                  TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '$quizHeading',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                             '$quizText',
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
