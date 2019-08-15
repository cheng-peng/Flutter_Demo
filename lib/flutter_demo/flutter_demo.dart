import 'package:flutter/material.dart';

import 'navigator_demo.dart';


class FlutterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 基础案例'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('Navigator 使用'),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) =>new NavigatorDemo())
              );
            },
          ),
        ],
      ),
    );
  }
}
