import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'router_handler.dart';

// 定义路径及跳转页面
class Routes {
  static FluroRouter router;

  //根路径
  static String root = '/';
  //Text组件页
  static String textPage = '/text';
  //动画组件页
  static String animated1Page = '/animated-1';
  //dio网络请求实例页
  static String dioPage = '/dio';

  // 配置路由
  static void configureRoutes(FluroRouter router) {
    // 路径没找到 Handler
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print('error::: router 没有找到');
          return null;
        });

    router.define(root, handler: rootHandler);
    router.define(textPage, handler: textPageHandler);
    router.define(animated1Page, handler: AnimatedPageHandler);
    router.define(dioPage, handler: dioPageHandler);
  }
}
