import 'package:flutter/material.dart';

import 'homepage.dart';

class RatingScreen extends StatelessWidget {
  static const routeName = 'rating-page';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 150, child: img()),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Mid If we Show Off",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: ListTile(
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
                  "you create a personel and inspiredhome designed you create a personel and inspiredhome designed for actually living"),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView(
                  children: [
                    ListTiles("Happiness Guarntee"),
                    customDivider(),
                    ListTiles("Company"),
                    customDivider(),
                    ListTiles("Explore"),
                    customDivider(),
                    ListTiles("Contact us"),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ListTiles extends StatefulWidget {
  final String text;

  const ListTiles(this.text);

  @override
  _ListTilesState createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          title: Text(
            '${widget.text}',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
          onTap: () {
            setState(() {
              expand = !expand;
            });
          },
          trailing: Icon(
            !expand ? Icons.add : Icons.remove,
            size: 18,
            color: Colors.blue,
          ),
        ),
        if (expand)
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text(
                  "hello how Are you fine what about you",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          )
      ],
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
