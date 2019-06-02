import 'package:english_words/english_words.dart' as english_words;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Scaffold(
      appBar: AppBar(
        title: Text('infinite listview'),
      ),
      body: InfiniteListView(),
    ));

class InfiniteListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfiniteListViewState();
  }
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = '##loading##';
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retriveData();
  }

  @override
  Widget build(BuildContext context) {
    var listView = ListView.separated(
      itemCount: _words.length,
      itemBuilder: (context, index) {
        if (_words[index] == loadingTag) {
          if (_words.length - 1 < 100) {
            _retriveData();
            return Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                ),
              ),
            );
          } else {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: Text(
                '没有更多了',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            );
          }
        }
        return ListTile(
          title: Text(_words[index]),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: .0,
        );
      },
    );
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('商品列表'),
        ),
        Expanded(
          child: listView,
        ),
      ],
    );
  }

  void _retriveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(
          _words.length - 1,
          english_words
              .generateWordPairs()
              .take(20)
              .map((e) => e.asPascalCase)
              .toList());
      setState(() {});
    });
  }
}
