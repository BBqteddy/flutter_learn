import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello WOrld'),
        ),
        body: Center(
          child: Container(
            child: new Text(
              'Hello imooc',
              style: TextStyle(fontSize: 40.0),
            ),
            alignment: Alignment.topCenter,
            width: 500.0,
            height: 400.0,
            decoration: new BoxDecoration(
                gradient: const LinearGradient(colors: [
              Colors.lightBlue,
              Colors.greenAccent,
              Colors.purple,
            ])),
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0, 0),
            margin: const EdgeInsets.all(10.0),
          ),
        ),
      ),
    );
  }
}
