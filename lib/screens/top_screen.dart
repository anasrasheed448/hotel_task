import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/widgets/carousel_image_widget.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: CarouselSlider.builder(
            itemCount: imageArray.length,
            itemBuilder: (context, i, _) => CarouselImage(img: imageArray[i]),
            options: CarouselOptions(
              autoPlay: true,
              height: height * 0.63,
              autoPlayCurve: Curves.easeOut,
              enlargeCenterPage: true,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            color: Colors.red[50],
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: CircularText(
                    children: [
                      TextItem(
                        text: Text(
                          "A Design You Love".toUpperCase(),
                          style: TextStyle(
                            fontSize: 27,
                            color: dark,
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
                            fontSize: 27,
                            color: dark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        space: 8,
                        startAngle: 90,
                        startAngleAlignment: StartAngleAlignment.center,
                        direction: CircularTextDirection.anticlockwise,
                      ),
                    ],
                    // radius: 50,
                    position: CircularTextPosition.inside,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    '$carouselText',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
