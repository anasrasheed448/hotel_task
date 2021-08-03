import 'package:flutter/material.dart';
import 'package:task01/widgets/custom_button.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: height * 0.73,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img7.jpeg'),
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 100, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(text: "I have all My "),
                    TextSpan(
                      text: "big item",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red[300],
                      ),
                    ),
                    TextSpan(
                      text: " but i all want to ",
                    ),
                    TextSpan(
                      text: "put it all together",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red[300],
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CustomBtn("Find Your Style", Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
