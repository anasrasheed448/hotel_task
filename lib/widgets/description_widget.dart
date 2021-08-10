import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: lightbrown,
                      style: BorderStyle.solid,
                    )),
                child: Icon(
                  icon,
                  color: Colors.brown.shade300,
                  size: 50,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: heading,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      TextSpan(text: description)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
