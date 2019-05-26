import 'package:flutter/material.dart';
import 'package:wemeet_flutter/text.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Demo Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('文本及样式'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextAndStyle();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
