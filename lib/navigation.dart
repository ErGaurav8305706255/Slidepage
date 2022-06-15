import 'package:flutter/material.dart';
import 'package:slidepage/secondpage.dart';
import 'package:slidepage/thirdpage.dart';

import 'fifthpage.dart';
import 'firstrpage.dart';
import 'fourthpage.dart';

class MyStatefulPage extends StatefulWidget {
  const MyStatefulPage({Key? key}) : super(key: key);

  @override
  State<MyStatefulPage> createState() => _MyStatefulPageState();
}

class _MyStatefulPageState extends State<MyStatefulPage> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FourthPage(),
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FifthPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
          label: 'Account',
            backgroundColor: Colors.teal,
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
