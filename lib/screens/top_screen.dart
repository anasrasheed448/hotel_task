import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:task01/widgets/custom_button.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _img = [
      "assets/images/img7.jpeg",
      "assets/images/img6.jpeg",
      "assets/images/img5.jpeg",
      "assets/images/img3.jpeg",
      "assets/images/img4.jpeg"
    ];
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider.builder(
            itemCount: _img.length,
            itemBuilder: (context, i, _) => CarouselImage(img: _img[i]),
            options: CarouselOptions(
              autoPlay: true,
              height: height * 0.66,
              autoPlayCurve: Curves.easeIn,
              enlargeCenterPage: true,
            )),
        Expanded(
          child: Container(
            // height: height * 0.2,
            width: double.infinity,
            color: Colors.lightBlue[50],
            padding: const EdgeInsets.only(top: 10),
            child: ListView(
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
                            fontSize: 27,
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
                    // radius: 50,
                    position: CircularTextPosition.inside,
                    backgroundPaint: Paint()..color = Colors.lightBlue.shade50,
                  ),
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
        ),
      ],
    );
  }
}

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
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(img),
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 100, left: 30),
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
                        decorationColor: Colors.red.shade300,
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
