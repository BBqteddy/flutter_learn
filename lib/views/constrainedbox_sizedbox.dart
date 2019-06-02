import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * ConstrainedBox和SizedBox都是通过RenderConstrainedBox来渲染的。
 * SizedBox只是ConstrainedBox的一个定制
 * 
 * UnconstrainedBox
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var redBox = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    var constrainedBox = ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: 80.0,
      ),
      child: Container(
        height: 5.0,
        child: redBox,
      ),
    );
    var sizedBox = SizedBox(
      width: 80.0,
      height: 80.0,
      child: redBox,
    );

// 多重约束
// 对于minWidth和minHeight来说，是取父子中相应数值较大的。实际上，只有这样才能保证父限制与子限制不冲突。
    var multiConstrainedBox1 = ConstrainedBox(
        constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
          child: redBox,
        ));
    var multiConstrainedBox2 = ConstrainedBox(
        constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
          child: redBox,
        ));
    var multiConstrainedBox3 = ConstrainedBox(
        constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
        child: UnconstrainedBox(
          //“去除”父级限制
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
            child: redBox,
          ),
        ));
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
        body: multiConstrainedBox3,
      ),
    );
  }
}
