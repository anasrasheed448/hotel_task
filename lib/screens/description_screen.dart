import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/widgets/description_widget.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text(
            descriptionMainHeading,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          DescriptionWidget(
              Icons.home_outlined, descriptionHeading[0], descriptionText),
          // const SizedBox(height: 5),
          DescriptionWidget(Icons.price_change_outlined, descriptionHeading[0],
              descriptionText),
          // const SizedBox(height: 5),
          DescriptionWidget(Icons.location_city_outlined, descriptionHeading[1],
              descriptionText),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
