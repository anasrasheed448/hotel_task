import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
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
      drawer: AppDrawer(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            border: Border.all(color: Colors.black.withOpacity(.3))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavyBar(
            backgroundColor: Colors.white,
            showElevation: true,
            selectedIndex: _currentIndex,
            onItemSelected: (index) => setState(() {
              _currentIndex = index;
            }),
            items: [
              BottomNavyBarItem(
                textAlign: TextAlign.end,
                icon: Icon(Icons.apps),
                title: Text('Home'),
                activeColor: Colors.black.withOpacity(.3),
                inactiveColor: Colors.grey,
              ),
              BottomNavyBarItem(
                textAlign: TextAlign.end,
                icon: Icon(Icons.description),
                title: Text('Description'),
                activeColor: Colors.brown.shade200,
                inactiveColor: Colors.grey,
              ),
              BottomNavyBarItem(
                textAlign: TextAlign.end,
                icon: Icon(Icons.star),
                title: Text('Rating'),
                inactiveColor: Colors.grey,
                activeColor: Colors.blue.shade300,
              ),
              BottomNavyBarItem(
                textAlign: TextAlign.end,
                icon: Icon(Icons.person),
                title: Text('Partners'),
                inactiveColor: Colors.grey,
                activeColor: Colors.red.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
