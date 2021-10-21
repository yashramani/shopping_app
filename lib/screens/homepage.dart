import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/screens/cartPage.dart';
import 'package:shopping_app/screens/exploreScreen.dart';
import 'package:shopping_app/screens/profileScreen.dart';
import 'package:shopping_app/widgets/bestSelling.dart';
import 'package:shopping_app/widgets/cameraButton.dart';
import 'package:shopping_app/widgets/categoryWidget.dart';
import 'package:shopping_app/widgets/headerText.dart';
import 'package:shopping_app/widgets/searchBarWidget.dart';
import 'package:shopping_app/widgets/searchbarContainer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    ExploreScreen(),
    CartPage(),
    ProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Person',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    ));
  }
}
