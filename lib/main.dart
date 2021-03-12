/// 引入库
import 'package:flutter/material.dart';

/// 引入本地文件
import 'package:flutter_dev/pages/home/index.dart'; // 首页
import 'package:flutter_dev/pages/examples/basicComponents/text.dart'; // Text组件
import 'package:flutter_dev/pages/animated/animated-1.dart'; //动画组件

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
      theme: mDefaultTheme,
      routes:{
        'text': (context) => TextPage(), //Text组件页
        'animated-1':  (context) => AnimatedWidgets(), //动画组件页
      }, // 注册路由表
      home: ScaffoldPage(title: '首页'),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// 主题
final ThemeData mDefaultTheme = ThemeData(
  // platform: TargetPlatform.iOS,
  primaryColor: Colors.white,
);