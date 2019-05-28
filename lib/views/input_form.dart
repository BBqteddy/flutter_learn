import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输入框及表单'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或邮箱',
              prefixIcon: Icon(Icons.person),
            ),
            controller: _usernameController,
            onChanged: (v){
              print('onChange: $v');
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '您的登陆密码',
              prefixIcon: Icon(
                Icons.lock
              ),
            ),
            obscureText: true,
          )
        ],
      ),
    );
  }
}
