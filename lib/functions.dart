import 'package:flutter/material.dart';

Row actionButton(String printStatement, String label, final color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      FloatingActionButton.extended(
        onPressed: () {
          print(printStatement);
        },
        label: Text(label),
        backgroundColor: color,
      ),
    ],
  );
}

Expanded passwordField(String label) {
  return Expanded(
    child: TextFormField(
      decoration: InputDecoration(
        labelText: label,
      ),
    ),
  );
}

Expanded sessionField(String label) {
  return Expanded(
    child: TextFormField(
      decoration: InputDecoration(
        labelText: label,
      ),
    ),
  );
}

Column sessionPage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      ),
      Expanded(
        flex: 1,
        child: Center(
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
                sessionField('Session ID'),
                passwordField('Password'),
                actionButton('Room was joined!', 'Join', Colors.pink[400]),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Center(
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
                Text('Create a room'),
                sessionField('Room name'),
                passwordField('Password (Optional)'),
                actionButton('Room was created!', 'Create', Colors.blue[400])
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
