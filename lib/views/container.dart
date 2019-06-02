import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('container'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text('Hello world!'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text('Hello world!'),
            )
          ],
        ),
      ),
    );
  }
}