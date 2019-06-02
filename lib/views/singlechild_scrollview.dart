import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(SingleChildScrollViewTest());

class SingleChildScrollViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return MaterialApp(
      title: 'single child scroll view',
      home: Scaffold(
        appBar: AppBar(
          title: Text('scrollchildscrollview'),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                  children: str
                      .split('')
                      .map((c) => Text(
                            c,
                            textScaleFactor: 2.0,
                          ))
                      .toList()),
            ),
          ),
        ),
      ),
    );
  }
}
