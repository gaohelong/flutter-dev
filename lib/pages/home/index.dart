import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScaffoldPage extends StatefulWidget {
  ScaffoldPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage>
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
    // Navigator.of(context).pushNamed("text", arguments: {"title": "Text组件"}); // 命名路由跳转
    Navigator.of(context).pushNamed("text", arguments: "Text组件"); // 命名路由跳转
  }

  @override
  Widget build(BuildContext context) {
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
            Tab(icon: Icon(Icons.airplanemode_active), text: "太空"),
            Tab(icon: Icon(Icons.article_outlined), child: Text("文章")),
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
              alignment: Alignment.topLeft, // 上左对其
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GestureDetector(
                    // 事件监听
                    child: Container(
                      alignment: Alignment.topLeft,
                      color: Colors.blue,
                      width: 200.0,
                      height: 30.0,
                      child: Padding(
                          padding: EdgeInsets.only(top: 6, left: 10.0),
                          child: Text(
                            "去往文章页",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    onTap: () => _goToPage("Tap"), //点击
                    onDoubleTap: () => _goToPage("DoubleTap"), //双击
                    onLongPress: () => _goToPage("LongPress"), //长按
                  ))),
          Container(
            child: Text("欢迎来看文章"),
          ),
          Center(
            child: Text("我是设置"),
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
                        "images/avatar@2x.png",
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
