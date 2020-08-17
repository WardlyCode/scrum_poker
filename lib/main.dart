import 'package:flutter/material.dart';
import 'functions.dart';

void main() {
  runApp(
    MaterialApp(
      home: ScrumPoker(),
    ),
  );
}

class ScrumPoker extends StatefulWidget {
  @override
  _ScrumPokerState createState() => _ScrumPokerState();
}

class _ScrumPokerState extends State<ScrumPoker> {
  int _currentIndex = 0;

  final tabs = [
    sessionPage(),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Session'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
