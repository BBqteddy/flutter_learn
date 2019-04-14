import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * Text主要属性:
 *  textAlign
 *  maxLine
 *  style: 更精细的控制
 */
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
          child: Text(
            'Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
