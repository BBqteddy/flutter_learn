import 'package:flutter/material.dart';

/**
 * 层叠布局和Web中的绝对定位
 * Android中的Frame布局是相似的
 */
class StackPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('StackPositioned'),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                left: 18.0,
                child: Text('I am Jack'),
              ),
              Container(
                child: Text(
                  'Hello world',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              Positioned(
                top: 18.0,
                child: Text('Your friend'),
              )
            ],
          ),
        ));
  }
}
