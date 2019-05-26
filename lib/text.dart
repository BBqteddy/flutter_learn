import 'package:flutter/material.dart';

class TextAndStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本及样式'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('hello word', textAlign: TextAlign.center),
          Text(
            'hello world! I\'m Jack' * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text('hello world', textScaleFactor: 1.5),
          Text('hello world',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: 'Courier',
                  background: Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed))
        ],
      )),
    );
  }
}
