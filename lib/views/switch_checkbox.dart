import 'package:flutter/material.dart';

class SwitchAndCheckBox extends StatefulWidget {
  @override
  _SwitchAndCheckBoxState createState() {
    return _SwitchAndCheckBoxState();
  }
}

class _SwitchAndCheckBoxState extends State<SwitchAndCheckBox> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('switch and checkbox'),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switchSelected,
            onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value;
              });
            },
          )
        ],
      ),
    );
  }
}
