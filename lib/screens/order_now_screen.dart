import 'package:flutter/material.dart';
import 'package:task01/widgets/custom_button.dart';

class OrderNowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      width: double.infinity,
      height: 600,
      color: Colors.amber[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "We wrote a book",
            style: TextStyle(
                color: Colors.amber[200], fontWeight: FontWeight.bold),
          ),
          Text.rich(
            TextSpan(
                style: TextStyle(
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: "Design the \nhome you love\n",
                    style: TextStyle(
                        color: Colors.amber[200],
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living",
                  ),
                ]),
          ),
          CustomBtn("Order Now", Colors.blueAccent.shade700),
          Container(
            margin: EdgeInsets.only(left: 50),
            width: 150,
            height: 220,
            child: Image.asset(
              'assets/images/img5.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
