import 'package:flutter/material.dart';
import 'package:task01/screens/about_screen.dart';
import 'package:task01/screens/partners_screen.dart';
import 'package:task01/screens/rating_screen.dart';
import 'package:task01/widgets/appbar.dart';
import 'package:task01/widgets/drawer.dart';

import 'description_screen.dart';
import 'homepage.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(),
      ),
      drawer: AppDrawer(),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontSize: 16),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center_outlined),
            label: "Description",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            label: 'Rating',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Partners',
          ),
        ],
      ),
    );
  }
}
