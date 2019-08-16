import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
        ),
        title: Text('AppBarDemo'),
      ),
      body: null,
    );
  }
}
