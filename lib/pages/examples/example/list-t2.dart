import 'package:flutter/material.dart';

class ListT2 extends StatefulWidget {
  ListT2({Key key, @required this.controller}) : super(key: key);
  final controller;

  @override
  _ListT2State createState() => _ListT2State();
}

class _ListT2State extends State<ListT2> {
  final String popWindow = '0'; //是否展示弹窗

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 50.0, //列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
        controller: widget.controller,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("$index"),
          );
        });
  }
}
