///引入库
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

///引入本地文件
import 'package:flutter_dev/pages/home/index.dart'; //首页
import 'package:flutter_dev/pages/examples/basicComponents/text.dart'; //Text组件展示页
import 'package:flutter_dev/pages/animated/animated-1.dart'; //动画组件展示页
import 'package:flutter_dev/pages/dio/detail.dart'; //dio网络请求实例页

///引入本地文件-练习
import '../pages/examples/example/home1.dart';
import '../pages/examples/example/home2.dart';
import '../pages/examples/example/home3.dart';
import '../pages/examples/example/home4.dart';
import '../pages/examples/example/home5.dart';
import '../pages/examples/example/home6.dart';
import '../pages/examples/example/home7.dart';
import '../pages/examples/example/home8.dart';
import '../pages/examples/example/home9.dart';
import '../pages/examples/example/home10.dart';
import '../pages/examples/example/home11.dart';
import '../pages/examples/example/home12.dart';
import '../pages/examples/example/home13.dart';
import '../pages/examples/example/home14.dart';

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

//动画组件展示页
Handler AnimatedPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String id = params['id']?.first;
  return AnimatedPage(title: '动画组件', params: {"id": id});
});

//dio网络请求实例
Handler dioPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String id = params['id']?.first;
  return DioPage(title: 'dio网络请求实例', params: {"id": id});
});

//练习-1
Handler testHomePageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String id = params['id']?.first;
  return TestHomePage(title: '首页开发-布局练习1', params: {"id": id});
});

Handler testHome2PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String id = params['id']?.first;
  return TestHome2Page(title: '首页开发-布局练习2', params: {"id": id});
});

Handler testHome3PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      return TestHome3Page(title: '首页开发-布局练习3', params: {"id": id});
    });

Handler testHome4PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      return TestHome4Page(title: '智能家居', params: {"id": id});
    });

Handler testHome5PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      return TestHome5Page(title: '滚动监听', params: {"id": id});
    });

Handler testHome6PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      return TestHome6Page(title: '吸顶', params: {"id": id});
    });

Handler testHome7PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome7Page(title: '获取组件信息', params: {"id": id});
    });

Handler testHome8PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome8Page(title: 'CustomScrollView', params: {"id": id});
    });

Handler testHome9PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome9Page(title: '状态管理', params: {"id": id});
    });

Handler testHome10PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome10Page(title: '数据共享(InheritedWidget)', params: {"id": id});
    });

Handler testHome11PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome11Page(title: 'Provider-实例1', params: {"id": id});
    });

Handler testHome12PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome12Page(title: 'Provider-实例2', params: {"id": id});
    });

Handler testHome13PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome13Page(title: 'Provider-实例3', params: {"id": id});
    });

Handler testHome14PageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      // GlobalKey key = GlobalKey(debugLabel: 'testHome7'); //传key

      return TestHome14Page(title: 'EventBus', params: {"id": id});
    });


