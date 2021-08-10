import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/widgets/custom_button.dart';

class OrderNowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 70),
      width: double.infinity,
      height: 600,
      color: Colors.red.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "We wrote a book",
            style: TextStyle(
                color: lightbrown, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Container(
            width: 300,
            child: Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: '$orderHeading',
                      style: TextStyle(
                          color: dark,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '$orderText',
                    ),
                  ]),
            ),
          ),
          CustomBtn(
            "Order Now",
            Colors.red.shade400,
            textColor: white,
            borderRadius: 20,
            horizontal: 35,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                color: white,
                width: 280,
                height: 350,
              ),
              Image.asset(
                imageArray[2],
                fit: BoxFit.cover,
                width: 230,
                height: 250,
              ),
              Positioned(
                top: 253,
                child: Container(
                  width: 230,
                  child: Text(
                    "Design the home you love".toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 4,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
