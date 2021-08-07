import 'package:flutter/material.dart';
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
                color: Colors.brown.shade200,
                fontWeight: FontWeight.bold,
                fontSize: 16),
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
                      text: "Design the \nhome you love\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living",
                    ),
                  ]),
            ),
          ),
          CustomBtn(
            "Order Now",
            Colors.red.shade400,
            textColor: Colors.white,
            borderRadius: 20,
            horizontal: 35,
          ),
          Container(
            color: Colors.white,
            width: 300,
            height: 310,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  'assets/images/img5.jpeg',
                  fit: BoxFit.cover,
                  width: 250,
                  height: 250,
                ),
                Positioned(
                  top: 253,
                  child: Container(
                    width: 250,
                    child: Text(
                      "Design the home you love".toUpperCase(),
                      style: TextStyle(
                        letterSpacing: 4,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
