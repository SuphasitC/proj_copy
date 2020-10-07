import 'package:flutter/material.dart';

class MyPocket extends StatefulWidget {
  MyPocket({Key key}) : super(key: key);

  @override
  _MyPocketState createState() => _MyPocketState();
}

class _MyPocketState extends State<MyPocket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Pocket'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You don't have any pocket yet.",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "Please create a new one.",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Add Pocket',
        child: Icon(Icons.add),
      ),
    );
  }
}
