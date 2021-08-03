import 'package:flutter/material.dart';

class RatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 10),
      child: Column(
        children: [
          Text(
            "Mid If we Show Off",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            title: Text.rich(TextSpan(children: [
              TextSpan(text: "Designed by"),
              TextSpan(
                  text: " Anas Rasheed",
                  style: TextStyle(decoration: TextDecoration.underline))
            ])),
            subtitle: Text("For Luigi P."),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.blueAccent),
                Icon(Icons.star, color: Colors.blueAccent),
                Icon(Icons.star, color: Colors.blueAccent),
                Icon(Icons.star, color: Colors.blueAccent),
                Icon(Icons.star, color: Colors.blueAccent),
              ],
            ),
          ),
          Text(
              "The ultimate guidebook to help you create a personel and inspiredhome designed for actually living The ultimate guidebook to help you create a personel and inspiredhome designed for actually livingThe ultimate guidebook to help you create a personel and inspiredhome designed for actually living"),
          bottomTiles("Happiness Guarntee"),
          customDivider(),
          bottomTiles("Company"),
          customDivider(),
          bottomTiles("Explore"),
          customDivider(),
          bottomTiles("Contact us"),
        ],
      ),
    );
  }

  ListTile bottomTiles(String text) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.blue),
      ),
      trailing: Icon(
        Icons.add,
        size: 18,
        color: Colors.blue,
      ),
    );
  }
}

Container customDivider() {
  return Container(
    width: double.infinity,
    height: 2,
    color: Colors.grey[400],
  );
}
