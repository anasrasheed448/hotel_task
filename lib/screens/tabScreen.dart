import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:task01/constants/style.dart';
import 'package:task01/screens/partners_screen.dart';
import 'package:task01/screens/rating_screen.dart';
import 'package:task01/widgets/appbar.dart';
import 'description_screen.dart';
import 'homepage.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  var active = true;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  var _currentIndex = 0;
  List<Map<String, Widget>> _pages = [];
  @override
  void initState() {
    _pages = [
      {
        'page': HomePage(),
      },
      {
        'page': DescriptionScreen(),
      },
      {
        'page': RatingScreen(),
      },
      {
        'page': PartnerScreen(),
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(),
      ),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            border: Border.all(color: dark.withOpacity(.3))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavyBar(
            backgroundColor: white,
            showElevation: true,
            selectedIndex: _currentIndex,
            onItemSelected: (index) => setState(() {
              _currentIndex = index;
            }),
            items: [
              bottomNavItem(Icons.apps, 'Home', lightblue),
              bottomNavItem(Icons.description, 'Description', lightbrown),
              bottomNavItem(Icons.star, 'Rating', dark),
              bottomNavItem(Icons.person, 'Partners', lightred),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavyBarItem bottomNavItem(
      IconData icon, String text, Color activeColor) {
    return BottomNavyBarItem(
      textAlign: TextAlign.end,
      icon: Icon(icon),
      title: Text(
        text,
      ),
      activeColor: activeColor.withOpacity(.3),
      inactiveColor: grey,
    );
  }
}
