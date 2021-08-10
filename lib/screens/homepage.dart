import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/screens/about_screen.dart';
import 'package:task01/screens/partners_screen.dart';
import 'package:task01/screens/style_quiz_screen.dart';
import 'package:task01/screens/top_screen.dart';

import 'description_screen.dart';
import 'order_now_screen.dart';
import 'rating_screen.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'hompage';

  @override
  Widget build(BuildContext context) {
    final _controller = PageController(
      initialPage: 0,
    );
    return PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        TopScreen(),
        AboutScreen(imageArray[5], "1.\n", aboutHeading, aboutText),
        AboutScreen(imageArray[3], "2.\n", aboutHeading, aboutText),
        AboutScreen(imageArray[1], "3.\n", aboutHeading, aboutText),
        OrderNowScreen(),
        StyleQuizScreen(),
        DescriptionScreen(),
        PartnerScreen(),
        RatingScreen(),
        // FooterScreen(),
      ],
    );
  }
}
