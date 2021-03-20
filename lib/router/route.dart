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

  //练习
  static String testHomePage = '/example1';
  static String testHome2Page = '/example2';
  static String testHome3Page = '/example3';
  static String testHome4Page = '/example4';
  static String testHome5Page = '/example5';
  static String testHome6Page = '/example6';
  static String testHome7Page = '/example7';
  static String testHome8Page = '/example8';
  static String testHome9Page = '/example9';
  static String testHome10Page = '/example10';
  static String testHome11Page = '/example11';
  static String testHome12Page = '/example12';

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

    //练习
    router.define(testHomePage, handler: testHomePageHandler);
    router.define(testHome2Page, handler: testHome2PageHandler);
    router.define(testHome3Page, handler: testHome3PageHandler);
    router.define(testHome4Page, handler: testHome4PageHandler);
    router.define(testHome5Page, handler: testHome5PageHandler);
    router.define(testHome6Page, handler: testHome6PageHandler);
    router.define(testHome7Page, handler: testHome7PageHandler);
    router.define(testHome8Page, handler: testHome8PageHandler);
    router.define(testHome9Page, handler: testHome9PageHandler);
    router.define(testHome10Page, handler: testHome10PageHandler);
    router.define(testHome11Page, handler: testHome11PageHandler);
    router.define(testHome12Page, handler: testHome12PageHandler);
  }
}
