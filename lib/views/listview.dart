import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(SingleChildScrollViewTest());

class SingleChildScrollViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var listViewBuilder = ListView.builder(
      itemCount: 100,
      itemExtent: 50.0,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('$index'),
        );
      },
    );
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(
      color: Colors.green,
    );
    var listVIewSeparatorBuilder = ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text('$index'),
        );
      },
      separatorBuilder: (BuildContext context, int index){
        return index % 2 == 0 ? divider1:divider2;
      },
    );
    return MaterialApp(
      title: 'single child scroll view',
      home: Scaffold(
        appBar: AppBar(
          title: Text('scrollchildscrollview'),
        ),
        body: listVIewSeparatorBuilder,
      ),
    );
  }
}
