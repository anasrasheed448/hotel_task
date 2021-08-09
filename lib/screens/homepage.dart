import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
        About('assets/images/img2.jpeg', "1.\n", "Tell us What you need\n",
            "pick a room set your buget and tell us about your pinteret worthy dreams- whether a full overhaul,or just some ideas"),
        About('assets/images/img5.jpeg', "2.\n", "Tell us What you need\n",
            "pick a room set your buget and tell us about your pinteret worthy dreams- whether a full overhaul,or just some ideas"),
        About('assets/images/img1.jpeg', "3.\n", "Tell us What you need \n",
            "pick a room set your buget and tell us about your pinteret worthy dreams- whether a full overhaul,or just some ideas"),
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


