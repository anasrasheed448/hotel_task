import 'package:flutter/material.dart';
import 'package:task01/widgets/description_widget.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "Interior Design is for EveryOne",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const DescriptionWidget(Icons.home, "Find your happy place\n",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
          const SizedBox(height: 10),
          const DescriptionWidget(
              Icons.price_change_outlined,
              "Find your happy place\n",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
          const SizedBox(height: 10),
          const DescriptionWidget(
              Icons.location_city,
              "Create a lasting relationship\n",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
        const  SizedBox(height: 10),
        ],
      ),
    );
  }
}
