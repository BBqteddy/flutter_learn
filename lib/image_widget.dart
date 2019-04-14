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
            child: new Image.network(
              'https://upload-images.jianshu'
              '.io/upload_images/6098829-a32b7159b373f09b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/468/format/webp',
              scale: 2.0,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.darken,
            ),
            width: 400.0,
            height: 300.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
