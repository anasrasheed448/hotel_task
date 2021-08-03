import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final IconData icon;
  final String heading;
  final String description;

  const DescriptionWidget(this.icon, this.heading, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 60,
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: heading,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextSpan(text: description)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
