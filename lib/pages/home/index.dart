///引入库
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_screenutil/screenutil.dart';

///引入本地文件
import 'package:flutter_dev/router/route.dart';

//Widget
import 'package:flutter_dev/widgets/list.dart'; //列表组件

class RootPage extends StatefulWidget {
  RootPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  TabController _tabController;
  List tabs = ["a", "b", "c"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  void _goToPage(String text) {
    print(text);
    String id = "100";
    // Navigator.of(context).pushNamed("text", arguments: {"title": "Text组件"}); // 命名路由跳转
    // Navigator.of(context).pushNamed("text", arguments: "Text组件"); // 命名路由跳转
    // Routes.router.navigateTo(context, "/text?id=${id}", replace: true); //关闭当前页面打开新页面
    // Routes.router.navigateTo(context, "/text?id=${id}", transition: TransitionType.fadeIn); //fadeIn方式打开新页面
    // Routes.router.navigateTo(context, "/text?id=${id}", transition: TransitionType.inFromLeft); //inFromLeft方式打开新页面
    Routes.router.navigateTo(context, "/text?id=${id}", transition: TransitionType.inFromRight); //inFromRight方式打开新页面
  }

  final dynamic _list = [
    {"page": "text", "title": "Text组件"},
    {"page": "animated-1", "title": "动画组件"},
    {"page": "dio", "title": "dio网络请求实例"},
    {"page": "example1", "title": "首页开发-布局练习1"},
    {"page": "example2", "title": "首页开发-布局练习2"},
    {"page": "example3", "title": "首页开发-布局练习3"},
    {"page": "example4", "title": "首页开发-布局练习4"},
    {"page": "example5", "title": "滚动监听"},
    {"page": "example6", "title": "吸顶", "url": "/example6?id=73"},
    {"page": "example7", "title": "获取组件信息", "url": "/example7?id=74"},
    {"page": "example8", "title": "CustomScrollView", "url": "/example8?id=75"},
    {"page": "example9", "title": "状态管理", "url": "/example9?id=76"},
    {"page": "example10", "title": "数据共享(InheritedWidget)", "url": "/example10?id=77"},
    {"page": "example11", "title": "Provider-实例1", "url": "/example11?id=78"},
    {"page": "example12", "title": "Provider-实例2", "url": "/example12?id=78"},
    {"page": "example13", "title": "EventBus", "url": "/example13?id=79"},
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context); //初始化ScreenUtil

    return Scaffold(
      /// 导航
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.airplanemode_active), text: "银河系"),
            Tab(icon: Icon(Icons.whatshot_outlined), child: Text("训练中心")),
            Tab(icon: Icon(Icons.brightness_5_sharp))
          ],
        ),
      ),

      /// 抽屉
      drawer: new MyDrawer(),

      /// 底部Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home)),
            SizedBox(),
            IconButton(icon: Icon(Icons.business)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),

      /// 添加按钮
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _onAdd),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /// 主体
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
              // 组件容器-Container
              alignment: Alignment.topLeft, // 上左对其
              child: Padding(
                  // Padding内填充
                  padding: EdgeInsets.all(16.0), // 所有位置16px填充
                  child: GestureDetector(
                    // 事件监听
                    child: Container(
                      // 组件容器-Container
                      alignment: Alignment.topLeft,
                      // color: Colors.blue,  // 背景色
                      decoration: BoxDecoration(
                        // 背景装饰(背景、渐变、边框等)
                        // color: Colors.blue, // 背景颜色
                        // color: const Color(0xFFFFFFFF), // 背景颜色
                        // image: DecorationImage(
                        //   // 加载网络图片
                        //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                        //   fit: BoxFit.cover,
                        // ),
                        gradient: RadialGradient(
                            // 背景径向渐变
                            colors: [Colors.red, Colors.orange],
                            center: Alignment.topLeft,
                            radius: .98),
                        boxShadow: [
                          // 卡片阴影
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 4.0)
                        ],
                        // border: Border.all(
                        //   // 设置所有位置边框
                        //   color: Colors.lightBlue,
                        //   width: 1,
                        // ),
                        borderRadius: BorderRadius.circular(10.0), // 10像素圆角
                      ),
                      // transform: Matrix4.rotationZ(.2), // 卡片倾斜变换
                      // width: 200.0, // 宽
                      height: 30.0, // 高
                      child: Padding(
                          // Padding内填充
                          padding: EdgeInsets.only(top: 6, left: 10.0),
                          // 指定上6px, 左10px
                          child: Text(
                            "去往Text组件",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    onTap: () => _goToPage("Tap"),
                    //点击
                    onDoubleTap: () => _goToPage("DoubleTap"),
                    //双击
                    onLongPress: () => _goToPage("LongPress"), //长按
                  ))),
          Container(
            // 组件容器-Container
            // padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            // margin: EdgeInsets.only(bottom: 30.0),
            alignment: Alignment.topLeft, // 上左对其
            child: ListPage(list: _list)),
          Center(
            child: Text(
              "欢迎来到系统设置",
              style: TextStyle(
                fontSize: 16.0,
                height: 1.2,
                color: Colors.lightBlueAccent,
                letterSpacing: 2.0
              ),
            )
          ),
        ],
      ),
    );
  }

  /// tab点击切换
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// 底部添加
  void _onAdd() {}
}

/// 抽屉
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/avatar@2x.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Wendux",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Add account'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Manage accounts'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
