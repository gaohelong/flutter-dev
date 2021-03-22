///引入库
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

//Provider
import 'package:provider/provider.dart';
import 'provider/Counter.dart';
import 'provider/Config.dart';

///引入本地文件
import 'package:flutter_dev/router/route.dart';

/// 入口
// void main() {
//   runApp(MyApp());
// }

void main() {
  runApp(
    //全局Provider.
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>(create: (_) => Counter()),
        ChangeNotifierProvider<Config>(create: (_) => Config()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initLibrary();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter dev',
      theme: mDefaultTheme,
      // 注册路由表
      // routes: {
      //   '/': (context) => ScaffoldPage(title: '首页'), // 设置默认首页
      //   'text': (context) => TextPage(), //Text组件页
      //   'animated-1': (context) => AnimatedWidgets(), //动画组件页
      // },
      // 生成路由的回调函数，当导航的命名路由的时候，会使用这个来生成界面
      onGenerateRoute: Routes.router.generator,
      // home: ScaffoldPage(title: '首页'), // 设置默认首页
      debugShowCheckedModeBanner: false, // 隐藏debug模式banner
    );
  }

  initLibrary() {
    /// 初始化路由
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Routes.router = router;
  }
}

/// 主题
final ThemeData mDefaultTheme = ThemeData(
  // platform: TargetPlatform.iOS,
  primaryColor: Colors.white,
);
