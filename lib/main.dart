import 'package:flutter/material.dart';
import 'package:flutter_demo/flutter_demo/flutter_demo.dart';
import 'package:flutter_demo/flutter_demo/navigator_demo.dart';
import 'package:flutter_demo/flutter_layout_demo/flutter_layout_demo.dart';
import 'package:flutter_demo/flutter_layout_demo/widgets/container.dart';
import 'package:flutter_demo/flutter_layout_demo/widgets/flow.dart';
import 'package:flutter_demo/flutter_layout_demo/widgets/wrap.dart';

import 'flutter_layout_demo/widgets/appbar.dart';
import 'flutter_layout_demo/widgets/expanded.dart';
import 'flutter_layout_demo/widgets/scaffold.dart';
import 'flutter_layout_demo/widgets/stack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter 案例',
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(),
        routes: <String, WidgetBuilder>{
          '/NThirdPage': (context) => NThirdPage(),
          '/FlutterDemo': (context) => FlutterDemo(),
          '/FlutterLayoutDemo': (context) => FlutterLayoutDemo(),
          '/Scaffold': (context) => ScaffoldDemo(),
          '/Container': (context) => ContainerDemo(),
          '/Expanded': (context) => ExpandedDemo(),
          '/Stack': (context) => StackDemo(),
          '/Wrap': (context) => WrapDemo(),
          '/Flow': (context) => FlowDemo(),
          '/AppBar': (context) => AppBarDemo(),
        });
  }
}

const List<String> list = ['FlutterDemo', 'FlutterLayoutDemo'];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 案例'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(
              child: Text(list[index]),
            ),
            onTap: () {
              _navigateToPage(context, list[index]);
            },
          );
        },
      ),
    );
  }

  //页面跳转
  void _navigateToPage(BuildContext context, String page) {
    print("Page:$page");
    Navigator.of(context).pushNamed('/$page');
  }
}
