import 'package:flutter/material.dart';
import 'package:task01/widgets/description_widget.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Interior Design is for EveryOne",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const DescriptionWidget(Icons.home, "Find your happy place\n",
              "lorem  and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. text of the printing and typesetting industry.Lorem"),
          // const SizedBox(height: 5),
          const DescriptionWidget(
              Icons.price_change_outlined,
              "Find your happy place\n",
              "lorem  and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. text of the printing and typesetting industry.Lorem"),
          // const SizedBox(height: 5),
          const DescriptionWidget(
              Icons.location_city,
              "Create a lasting relationship\n",
              "lorem  and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. text of the printing and typesetting industry.Lorem"),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
