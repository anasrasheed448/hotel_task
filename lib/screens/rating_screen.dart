import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task01/constants/style.dart';

class RatingScreen extends StatelessWidget {
  static const routeName = 'rating-page';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: img(),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.red.shade50,
            padding: const EdgeInsets.only(top: 10, left: 20, right: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Mid If we Show Off",
                  style: TextStyle(
                    color: dark,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: ListTile(
                    title: Text.rich(TextSpan(children: [
                      TextSpan(text: "Designed by"),
                      TextSpan(
                          text: " John Doe",
                          style:
                              TextStyle(decoration: TextDecoration.underline))
                    ])),
                    subtitle: Text("For Luigi P."),
                    trailing: Icon(
                      Icons.arrow_forward,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: dark),
                      Icon(Icons.star, color: dark),
                      Icon(Icons.star, color: dark),
                      Icon(Icons.star, color: dark),
                      Icon(Icons.star, color: dark),
                    ],
                  ),
                ),
                Text('$ratingText'),
                // SizedBox(height: 15),
                Text.rich(TextSpan(
                  text: "See the Design",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      decoration: TextDecoration.underline),
                )),
                // SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.facebook),
                      FaIcon(FontAwesomeIcons.facebookMessenger),
                      FaIcon(FontAwesomeIcons.twitter),
                      FaIcon(FontAwesomeIcons.pinterest),
                    ],
                  ),
                ),
                // SizedBox(height: 20),
                Text(
                  '$footerText',
                  style: TextStyle(
                    fontSize: 13,
                    color: grey,
                  ),
                  maxLines: 4,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
