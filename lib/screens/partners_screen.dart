import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/widgets/custom_button.dart';

class PartnerScreen extends StatelessWidget {
  static const routeName = 'partner-page';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade50,
      child: Column(
        children: [
          Expanded(flex: 2, child: img()),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customHeading("Our Partners"),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      children: [
                        TextSpan(
                          text: '$partnerHeading',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '$partnerText',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(text: '$partnerData'),
                      ),
                      Text.rich(
                        TextSpan(text: '$partnerData'),
                      ),
                    ],
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
          ),
        ],
      ),
    );
  }
}
