import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Center(
        child: Text(
          "stagehub".toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 6),
        ),
      ),
      // actions: [
      //   IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.message_outlined),
      //   ),
      //   IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.shopping_cart_outlined),
      //   ),
      // ],
    );
  }
}
