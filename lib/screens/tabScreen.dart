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
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  var _currentIndex = 1;
  List<Map<String, Widget>> _pages = [];
  @override
  void initState() {
    _pages = [
      {},
      {
        'page': HomePage(),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.blue,
        
        selectedLabelStyle: TextStyle(fontSize: 16),
        
        onTap: (index) {
          print(index);
          index == 0
              ? _drawerKey.currentState!.openDrawer()
              : setState(() {
                  _currentIndex = index;
                });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            label: "Drawer",
            backgroundColor: Colors.black54,
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
