import 'package:flutter/material.dart';
import 'package:task01/widgets/custom_button.dart';

class PartnerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  text: "We work with more than 200 vendors,bigs and small\n",
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
                    text: "West Elm\nInterior Define\nCB2\nArticle\nSurya"),
              ),
              Text.rich(
                TextSpan(
                    text: "West Elm\nInterior Define\nCB2\nArticle\nSurya"),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomBtn(
            "Find Your Style",
            Colors.white,
            borderColor: Colors.brown.shade300,
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
        fontSize: 16, color: Colors.amber[200], fontWeight: FontWeight.bold),
  );
}
