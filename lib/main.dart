import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 案例',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 案例'),
      ),
      body: Center(
        child: new RaisedButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return SecondPage();
            // }));
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Text('跳转页面'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('第二个页面'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
