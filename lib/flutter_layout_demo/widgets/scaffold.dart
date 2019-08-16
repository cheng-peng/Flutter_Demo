import 'package:flutter/material.dart';

class ScaffoldDemo extends StatefulWidget {
  @override
  _ScaffoldDemoState createState() => _ScaffoldDemoState();
}

class _ScaffoldDemoState extends State<ScaffoldDemo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScaffoldDemo'),
      ),
      body: Center(
        child: Text('You have pressed the button times. $count'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          count += 1;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
    );
  }
}
