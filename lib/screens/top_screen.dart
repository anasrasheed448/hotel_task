import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:task01/constants/style.dart';
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
        Expanded(
          flex: 4,
          child: CarouselSlider.builder(
              itemCount: _img.length,
              itemBuilder: (context, i, _) => CarouselImage(img: _img[i]),
              options: CarouselOptions(
                autoPlay: true,
                height: height * 0.63,
                autoPlayCurve: Curves.easeIn,
                enlargeCenterPage: true,
              )),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            color: Colors.red[50],
            padding: const EdgeInsets.only(top: 10),
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
