/// 引入库
import 'package:flutter/material.dart';

/// 引入本地文件
import 'package:flutter_dev/pages/home/index.dart'; // 首页
import 'package:flutter_dev/pages/examples/basicComponents/text.dart'; // Text组件

/// 入口
void main() {
  runApp(MyApp());
}

/// 根
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter dev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        "text":(context) => TextPage()
      }, // 注册路由表
      home: ScaffoldPage(title: '首页'),
    );
  }
}