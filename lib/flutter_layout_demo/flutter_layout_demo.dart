import 'package:flutter/material.dart';

const List<String> list = ['/Scaffold','/Container','/Expanded','/Stack','/Wrap','/Flow','/AppBar'];

class FlutterLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlutterLayoutDemo')),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Center(
            child: ListTile(
              title: Text(list[index].substring(1)),
              onTap: (){
                Navigator.of(context).pushNamed(list[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
