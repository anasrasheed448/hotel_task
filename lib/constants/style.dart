import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const Color dark = Colors.black;
const Color white = Colors.white;
const Color grey = Colors.grey;

Color lightred = Colors.red.shade200;
Color lightbrown = Colors.brown.shade200;
Color lightblue = Colors.blue.shade300;

const imageArray = [
  "assets/images/img7.jpeg",
  "assets/images/img6.jpeg",
  "assets/images/img5.jpeg",
  "assets/images/img3.jpeg",
  "assets/images/img4.jpeg",
  "assets/images/img2.jpeg",
];

// Carousel screen
const String carouselText =
    "Our happiness Gurantee:\nYour Love will havenly experience or\nYour Love will havenly experience or";

// About screen
const String aboutText =
    "pick a room set your buget and tell us about your pinteret worthy dreams- whether a full overhaul,or just some ideas";

const String aboutHeading = "Tell us What you need\n";

// Order Now screen
const String orderText =
    "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living";

const String orderHeading = "Design the \nhome you love\n";

//  Rating Screen
const String footerText =
    "@2021 STAGEHUB INC, All Rights Reserved\n\nFind us in the AppStore | PrivacyPolicy | Terms Of Service";

const String ratingText =
    "you create a personel and inspiredhome designed you create  and inspired home designed for the actually living personel and inspired home designed for actually living";

// Style Quiz Screen
const String quizText =
    "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living";
const String quizHeading =
    "Which one are you? we'll help you find your style\n\n";

// Partners screen
const String partnerHeading =
    "We work with more than 200 vendors,bigs and small\n";

const String partnerText =
    "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living";

const String partnerData = "West Elm\nInterior Define\nCB2\nArticle\nSurya";

// Description Screen
const descriptionMainHeading = "Interior Design is for EveryOne";

const descriptionHeading = [
  "Find your happy place\n",
  "Create a lasting relationship\n"
];
const descriptionText =
    "lorem  and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. text of the printing and typesetting industry.Lorem";


// Function used in some screen are down below

Text customHeading(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      color: lightbrown,
      fontWeight: FontWeight.bold,
    ),
  );
}

Container customDivider() {
  return Container(
    width: double.infinity,
    height: 2,
    color: Colors.grey[400],
  );
}

Container img() {
  return Container(
    width: double.infinity,
    child: Image.asset(
      imageArray[2],
      fit: BoxFit.cover,
    ),
  );
}
