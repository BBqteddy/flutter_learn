import 'package:flutter/material.dart';

// GridView Widget

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '电影海报实例',
        home: Scaffold(
            body: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              childAspectRatio: 0.7,
              children: <Widget>[
                Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg', fit: BoxFit.cover),
                Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg', fit: BoxFit.cover)
              ]
            ),
            appBar: AppBar(title: Text('电影海报实例'))));
  }
}
