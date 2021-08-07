import 'package:flutter/material.dart';
import 'package:task01/screens/homepage.dart';
import 'package:task01/widgets/custom_button.dart';

class PartnerScreen extends StatelessWidget {
  static const routeName = 'partner-page';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade50,
      child: Column(
        children: [
          Container(height: 200, child: img()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customHeading("Our Partners"),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "We work with more than 200 vendors,bigs and small\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                          text:
                              "West Elm\nInterior Define\nCB2\nArticle\nSurya"),
                    ),
                    Text.rich(
                      TextSpan(
                          text:
                              "West Elm\nInterior Define\nCB2\nArticle\nSurya"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomBtn(
                  "Find Your Style",
                  Colors.white,
                  textColor: Colors.black,
                  borderColor: Colors.red,
                  borderRadius: 20,
                  horizontal: 35,
                  elevation: 6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Text customHeading(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 16,
        color: Colors.brown.shade200,
        fontWeight: FontWeight.bold),
  );
}
