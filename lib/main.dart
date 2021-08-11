import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/screens/tabScreen.dart';

import 'screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel',
      theme: ThemeData(
        textTheme:
            GoogleFonts.latoTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: dark,
        ),
        appBarTheme: AppBarTheme(
          color: white,
          iconTheme: IconThemeData(color: dark),
        ),
        // primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        HomePage.routeName: (ctx) => HomePage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), redirectTo);
    super.initState();
  }

  void redirectTo() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => TabScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/splash.png"),
      ),
    );
  }
}
