import 'package:flutter/material.dart';

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
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 350,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(
                new Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Join a room'),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Session ID',
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {
                        print('Room Joined');
                      },
                      label: Text('Join'),
                      backgroundColor: Colors.pink[400],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 350,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(
              new Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Create a room'),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Session ID',
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password (Optional)',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () {
                      print('Room created');
                    },
                    label: Text('Create'),
                    backgroundColor: Colors.blue[400],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
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
