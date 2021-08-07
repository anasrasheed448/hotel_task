import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTiles("Happiness Guarntee"),
        customDivider(),
        ListTiles("Company"),
        customDivider(),
        ListTiles("Explore"),
        customDivider(),
        ListTiles("Contact us"),
        customDivider(),
        Container(
          padding: EdgeInsets.only(top: 30, left: 10),
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.facebook),
              FaIcon(FontAwesomeIcons.facebookMessenger),
              FaIcon(FontAwesomeIcons.twitter),
              FaIcon(FontAwesomeIcons.pinterest),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          "  @2021 STAGEHUB INC, All Rights Reserved\n\n Find us in the AppStore | PrivacyPolicy | Terms Of Service | ADA Accessibility",
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
          maxLines: 3,
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
            style: GoogleFonts.lato(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
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
