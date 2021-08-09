import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';

class About extends StatelessWidget {
  static const routeName = 'about-page';
  final String image;
  final String textNo;
  final String heading;
  final String description;

  About(this.image, this.textNo, this.heading, this.description);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
             dark.withOpacity(0.5), BlendMode.dstATop),
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: height * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              "Even Simpler than you Think",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
            child: Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 17),
                children: [
                  TextSpan(
                    text: textNo,
                    style: TextStyle(
                      fontFamily: 'B612 Mono',
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: heading,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: description)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
