import 'package:flutter/material.dart';
import 'package:wemeet_flutter/image.dart';
import 'package:wemeet_flutter/text.dart';
import 'package:wemeet_flutter/button.dart';
import 'package:wemeet_flutter/views/focus.dart';
import 'package:wemeet_flutter/views/form_field.dart';
import 'package:wemeet_flutter/views/input_form.dart';
import 'package:wemeet_flutter/views/row_column.dart';
import 'package:wemeet_flutter/views/switch_checkbox.dart';
import 'package:wemeet_flutter/views/flexlayout.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Demo Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('文本及样式'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextAndStyle();
                }));
              },
            ),
            FlatButton(
              child: Text('按钮'),
              textColor: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Button();
                }));
              },
            ),
            FlatButton(
              child: Text('图片'),
              textColor: Colors.brown,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImageSample();
                }));
              },
            ),
            FlatButton(
              child: Text('单选开关和复选框'),
              textColor: Colors.purple,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SwitchAndCheckBox();
                }));
              },
            ),
            FlatButton(
              child: Text('输入框及表单'),
              textColor: Colors.deepOrange,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InputForm();
                }));
              },
            ),
            FlatButton(
              child: Text('控制焦点'),
              textColor: Colors.deepPurple,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return Focus();
                }));
              },
            ),
            FlatButton(
              child: Text('Form'),
              textColor: Colors.teal,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return FormTest();
                }));
              },
            ),
            FlatButton(
              child: Text('RowColumn'),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return RowColumn();
                }));
              },
            ),
            FlatButton(
              child: Text('FlexLayout'),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return FlexLayout();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
