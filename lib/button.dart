import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('normal'),
            onPressed: () {
              debugPrint('RaisedButton');
            },
          ),
          FlatButton(
            child: Text('flat button'),
            onPressed: () {
              debugPrint('flat  bbutton');
            },
          ),
          OutlineButton(
            child: Text('outline button'),
            onPressed: () {
              debugPrint('outline button');
            },
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {
              debugPrint('icon button');
            },
          ),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text('Submit'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {
              debugPrint('自定义button');
            },
          )
        ],
      )),
    );
  }
}
