import 'package:flutter/material.dart';
import 'package:flutter_app/Library.dart';
import 'package:flutter_app/Search.dart';
import 'package:ionicons/ionicons.dart';
import 'Settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          children: [
            //Container1
            Column(
              children: [
                Text(
                  'Good Afternoon',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Column(),
                    Column(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {
                HomePage();
              },
              icon: Icon(Ionicons.home),
            ),
            IconButton(
              onPressed: () {
                Search();
              },
              icon: Icon(Ionicons.search),
            ),
            IconButton(
                onPressed: () {
                  Library();
                },
                icon: Icon(Icons.bookmark)),
            IconButton(
              onPressed: () {
                Settings();
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
