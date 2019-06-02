import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

/**
 * Transform的变换是应用在绘制阶段，而并不是应用在布局(layout)阶段
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var transform = Container(
      color: Colors.black,
      child: Transform(
        alignment: Alignment.topRight,
        transform: Matrix4.skewY(0.3),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.deepOrange,
          child: const Text('Apartment for rent!'),
        ),
      ),
    );

    var offset = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: Transform.translate(
        offset: Offset(-20.0, -5.0),
        child: Text('Hello world'),
      ),
    );

    var rotate = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: Transform.rotate(
        angle: math.pi / 2,
        child: Text('Hello world'),
      ),
    );

    var scale = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: Transform.scale(
        scale: 1.5,
        child: Text('Hello world'),
      ),
    );

    var transformLayout = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Transform.scale(scale: 1.5, child: Text("Hello world"))),
        Text(
          "你好",
          style: TextStyle(color: Colors.green, fontSize: 18.0),
        )
      ],
    );

    var rotatedBox = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text('Hello world'),
          ),
        ),
        Text(
          '你好',
          style: TextStyle(
            color: Colors.green,
            fontSize: 18.0,
          ),
        ),
      ],
    );

    var body = Padding(
        child: Container(
          color: Colors.white,
          child: rotatedBox,
        ),
        padding: EdgeInsets.only(top: 70.0, left: 30.0));

    return MaterialApp(
      title: 'test',
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
          actions: <Widget>[
            UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              ),
            ),
          ],
        ),
        body: body,
      ),
    );
  }
}
