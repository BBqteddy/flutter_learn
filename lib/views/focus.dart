import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Focus extends StatefulWidget {
  @override
  _FoucsState createState() {
    return _FoucsState();
  }
}

class _FoucsState extends State<Focus> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('focus')
      ),
      body: Column(
        children: <Widget>[
          TextField(
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(labelText: 'input1'),
            ),
            TextField(
              focusNode: focusNode2,
              decoration: InputDecoration(
                labelText: 'input2',
              ),
            ),
            Builder(
              builder: (ctx) {
                return Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('移动焦点'),
                      onPressed: () {
                        if (null == focusScopeNode) {
                          focusScopeNode = FocusScope.of(context);
                        }
                        focusScopeNode.requestFocus(focusNode2);
                      },
                    ),
                    RaisedButton(
                      child: Text('隐藏键盘'),
                      onPressed: () {
                        // https://book.flutterchina.club/chapter3/input_and_form.html
                        focusNode1.unfocus();
                        focusNode2.unfocus();
                      },
                    )
                  ],
                );
              },
            )
        ],
      ),
    );
  }
}
