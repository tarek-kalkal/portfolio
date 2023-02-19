import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/home/widgets/section1.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'about/about.dart';
import 'contact/contact.dart';
import 'home/screens/homeScreen.dart';
import 'projects/projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen() ,
    ProjectsPage(),
    AboutPage(),
    ContactPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'LOGO',
                  style: TextStyle(color: Colors.yellow, fontSize: 30),
                ),
              ),
              Spacer(),
              SalomonBottomBar(
                currentIndex: _selectedIndex,
                onTap: (i) => _onItemTapped(i),
                items: [
                  SalomonBottomBarItem(
                      icon: Icon(Icons.home),
                      title: Text("Home"),
                      selectedColor: Colors.yellow,
                      unselectedColor: Colors.white),
                  SalomonBottomBarItem(
                      icon: Icon(Icons.work),
                      title: Text("Projects"),
                      selectedColor: Colors.yellow,
                      unselectedColor: Colors.white),
                  SalomonBottomBarItem(
                      icon: Icon(Icons.info),
                      title: Text("About"),
                      selectedColor: Colors.yellow,
                      unselectedColor: Colors.white),
                  SalomonBottomBarItem(
                      icon: Icon(Icons.contact_mail),
                      title: Text("Contact"),
                      selectedColor: Colors.yellow,
                      unselectedColor: Colors.white)
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}








