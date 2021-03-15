///引入库
import 'package:flutter/material.dart';

///本地
import 'package:flutter_dev/router/route.dart'; //绝对路径引入本地文件-引入路由

///Git Detail
class GitDetailPage extends StatefulWidget {
  GitDetailPage({Key key, @required this.detail}) : super(key: key);
  final detail;

  @override
  _GitDetailPageState createState() => _GitDetailPageState();
}

/// Layout
class _GitDetailPageState extends State<GitDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'gitUrl: ${widget.detail.currentUserUrl}'
      ),
    );
  }

}
