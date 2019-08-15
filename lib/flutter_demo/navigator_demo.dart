import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第一个页面')),
      body: Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text('第一个页面'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NSecondPage()));
          },
        ),
      ),
    );
  }
}

class NSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第二个页面')),
      body: Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text('第二个页面'),
          onPressed: () {
            Navigator.of(context).pushNamed('/NThirdPage');
          },
        ),
      ),
    );
  }
}

class NThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第三个页面')),
      body: Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text('第三个页面'),
          onPressed: () {
           Navigator.popUntil(context, ModalRoute.withName('/FlutterDemo'));
          },
        ),
      ),
    );
  }
}
