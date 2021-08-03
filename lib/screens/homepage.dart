import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:task01/screens/about_screen.dart';
import 'package:task01/screens/style_quiz_screen.dart';
import 'package:task01/screens/top_screen.dart';
import 'package:task01/widgets/appbar.dart';
import 'package:task01/widgets/description_widget.dart';

import 'description_screen.dart';
import 'order_now_screen.dart';
import 'rating_screen.dart';

class HomePage extends StatelessWidget {
  static const routeName = "homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(),
      ),
      drawer: Drawer(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopScreen(),
            Container(
              width: double.infinity,
              color: Colors.lightBlue[50],
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  CircularText(
                    children: [
                      TextItem(
                        text: Text(
                          "A Design You Love".toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        space: 7,
                        startAngle: -90,
                        startAngleAlignment: StartAngleAlignment.center,
                        direction: CircularTextDirection.clockwise,
                      ),
                      TextItem(
                        text: Text(
                          "Or your Money Back".toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        space: 8,
                        startAngle: 90,
                        startAngleAlignment: StartAngleAlignment.center,
                        direction: CircularTextDirection.anticlockwise,
                      ),
                    ],
                    radius: 60,
                    position: CircularTextPosition.inside,
                    backgroundPaint: Paint()..color = Colors.lightBlue.shade50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Our happiness Gurantee:\nYour Love will havenly experience or\nYour Love will havenly experience or",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),         
            About('assets/images/img2.jpeg', "1.\n", "Tell us What you need\n",
                "pick a room set your buget and tell us aout your\npinteret worthy dreams- whether a full overhaul,or \njust some ideas"),
            About('assets/images/img5.jpeg', "2.\n", "Tell us What you need\n",
                "pick a room set your buget and tell us aout your\npinteret worthy dreams- whether a full overhaul,or \njust some ideas"),
            About('assets/images/img1.jpeg', "3.\n", "Tell us What you need\n",
                "pick a room set your buget and tell us aout your\npinteret worthy dreams- whether a full overhaul,or \njust some ideas"),
            OrderNowScreen(),
            img(),  
            StyleQuizScreen(),
            DescriptionScreen(),
            img(),
            RatingScreen(),
          ],
        ),
      ),
    );
  }

  Container img() {
    return Container(
      width: double.infinity - 10,
      height: 300,
      child: Image.asset(
        "assets/images/img5.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}
