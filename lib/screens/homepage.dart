// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/constant/functions.dart';
import 'package:shopping_app/screens/cartPage.dart';
import 'package:shopping_app/constant/Constant.dart';
import 'package:shopping_app/screens/exploreScreen.dart';
import 'package:shopping_app/screens/profileScreen.dart';

class Homepage extends StatefulWidget {

  const Homepage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
Functions fun = Functions();

@override
  void initState()  {
    super.initState();
    setState(() {
      getData();
    });
  }

  getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    appConstData.usergglID = preferences.getString('emailID')!;
    print('Homepage ----------------- ${appConstData.usergglID}');
  }

  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    // ignore: prefer_const_constructors
    ExploreScreen(),
    CartPage(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => exit(0),
            child: Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: SafeArea(
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
        )), onWillPop: _onWillPop);
  }
}
