///引入库
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

///页面
import 'package:flutter_dev/pages/home/index.dart'; //首页
import 'package:flutter_dev/pages/examples/basicComponents/text.dart'; //Text组件展示页
import 'package:flutter_dev/pages/animated/animated-1.dart'; //动画组件展示页

//首页
Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RootPage(title: '首页');
});

//Text组件展示页
Handler textPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String id = params['id']?.first;
  return TextPage(title: 'Text组件', id: id);
});

//Text组件展示页
Handler AnimatedPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      return AnimatedPage(title: '动画组件', params: { id: id});
    });
