import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('ListView Widget'),
          ),
          body: Center(
            child: Container(
              height: 200.0,
              child: MyList(),
            ),
          )),
    );
  }
}

// 自定义组件
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 180.0,
          color: Colors.greenAccent,
        ),
        Container(
          width: 180.0,
          color: Colors.redAccent,
        ),
        Container(
          width: 180.0,
          color: Colors.blueAccent,
        ),
        Container(
          width: 180.0,
          color: Colors.black,
        )
      ],
    );
  }
}
