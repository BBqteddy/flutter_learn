import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new MaterialApp(
        title: 'Welcome to Flutter',
        theme: new ThemeData(
          primaryColor: Colors.pink,
        ),
        home: new MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('samples.flutter.io/battery');

  String _str = 'Unknown string.';

  Future<Null> _getStringFromNative() async {
    String str;
    try {
      final String result = await platform.invokeMethod('getStringFromNative');
      str = result;
    } on PlatformException catch (e) {
      str = "Failed to get string native: '${e.message}'.";
    }

    setState(() {
      _str = str;
    });
  }

  Future<Null> _getStringFromCpp() async {
    String str;
    try {
      final String result = await platform.invokeMethod('getStringFromCpp');
      str = result;
    } on PlatformException catch (e) {
      str = "Failed to get string cpp: '${e.message}'.";
    }

    setState(() {
      _str = str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new RaisedButton(
              child: new Text('Get From Native'),
              onPressed: _getStringFromNative,
            ),
            new RaisedButton(
              child: new Text('Get From C++'),
              onPressed: _getStringFromCpp,
            ),
            new Text(_str),
          ],
        ),
      ),
    );
  }
}
