import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wemeet_flutter/my_icons.dart';

class ImageSample extends StatelessWidget {
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
          Image.asset('images/image.jpg', width: 100.0),
          Image.network(
            'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
            width: 100.0,
          ),
          Icon(
            Icons.error,
            color: Colors.green,
          ),
          Icon(
            MyIcons.book,
            color: Colors.purple,
          ),
          Icon(
            MyIcons.wechat,
            color: Colors.green,
          )
        ],
      )),
    );
  }
}
