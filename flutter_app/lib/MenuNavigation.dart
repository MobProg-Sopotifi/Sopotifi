import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'HomePage.dart';
import 'Library.dart';
import 'Search.dart';
import 'Settings.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedIndex = 0;
  final screen = [HomePage(), Search(), Library(),Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                child: Icon(
                  Ionicons.settings_outline,
                  color: Colors.black,
                )),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home),
            label: 'Listen Now',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.search_outline),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.book),
            label: 'Library',
          ),
           BottomNavigationBarItem(
            icon: Icon(Ionicons.settings_outline),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: screen[selectedIndex],
    );
  }
}
