import 'package:flutter/material.dart';

class ListT3 extends StatefulWidget {
  ListT3({Key key, @required this.controller}) : super(key: key);
  final controller;

  @override
  _ListT3State createState() => _ListT3State();
}

class _ListT3State extends State<ListT3> {
  final String popWindow = '0'; //是否展示弹窗

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListView.builder(
        itemCount: 100,
        itemExtent: 50.0, //列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
        controller: widget.controller,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("$index"),
          );
        }
      ),
      onTap: () {
        print(context.size);
      },
    );
  }
}
