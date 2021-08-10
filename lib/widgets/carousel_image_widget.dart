
import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';

import 'custom_button.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: height * 0.55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(img),
          colorFilter:
              ColorFilter.mode(dark.withOpacity(0.8), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, left: 10, right: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black38.withOpacity(.3),
            ),
            // height: 200,
            child: Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                  children: [
                    TextSpan(text: "I have all My "),
                    TextSpan(
                      text: "big item",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: lightred,
                      ),
                    ),
                    TextSpan(
                      text: " but i all want to ",
                    ),
                    TextSpan(
                      text: "put it all together",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: lightred,
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CustomBtn(
                "Find Your Style",
                white,
                vertical: 15,
                borderRadius: 20,
              )),
        ],
      ),
    );
  }
}
