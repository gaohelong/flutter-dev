///引入库
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

///引入本地文件
import 'package:flutter_dev/router/route.dart';

///list组件
class ListPage extends StatelessWidget {
  ListPage({Key key, this.list}) : super(key: key);
  final list;

  ///数据列表转换成组件
  listWidget(context) {
    List<Widget> _widgetList = [];

    for (int i = 0; i < list.length; i++) {
      var _item = list[i];
      _widgetList.add(Container(
          //组件容器-Container
          alignment: Alignment.topLeft, //上左对其
          child: Padding(
              //Padding内填充
              padding: EdgeInsets.all(6.0), //所有位置16px填充
              child: GestureDetector(
                //事件监听
                child: Container(
                  //组件容器-Container
                  alignment: Alignment.topLeft,
                  //外边距
                  margin: EdgeInsets.only(top: 6.0, left: 5.0, right: 10.0),
                  // color: Colors.blue,  // 背景色
                  decoration: BoxDecoration(
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
                    borderRadius: BorderRadius.circular(10.0), // 10像素圆角
                  ),
                  // transform: Matrix4.rotationZ(.2), // 卡片倾斜变换
                  // width: 200.0, // 宽, 定宽按照固定宽来，不定宽自动填充满
                  // height: 40.0,
                  // 高
                  child: Padding(
                      // Padding内填充
                      padding: EdgeInsets.only(
                          top: 6.0, left: 10.0, bottom: 6.0, right: 10.0),
                      // 指定上6px, 左10px
                      child: Text(
                        'goTo->' + _item["title"],
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )),
                ),
                onTap: () => {
                  // Navigator.of(context).pushNamed(_item['page'], arguments: _item['title']) //命名路由跳转
                  if (_item['page'] == 'animated-1')
                    {
                      Routes.router.navigateTo(context, "/animated-1?id=66",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'dio')
                    {
                      Routes.router.navigateTo(context, "/dio?id=67",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example1')
                    {
                      Routes.router.navigateTo(context, "/example1?id=68",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example2')
                    {
                      Routes.router.navigateTo(context, "/example2?id=69",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example3')
                    {
                      Routes.router.navigateTo(context, "/example3?id=70",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example4')
                    {
                      Routes.router.navigateTo(context, "/example4?id=71",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example5')
                    {
                      Routes.router.navigateTo(context, "/example5?id=72",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example6')
                    {
                      Routes.router.navigateTo(context, _item['url'],
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example7')
                    {
                      Routes.router.navigateTo(context, _item['url'],
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else if (_item['page'] == 'example8')
                    {
                      Routes.router.navigateTo(context, _item['url'],
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                  else
                    {
                      Routes.router.navigateTo(context, "/text?id=67",
                          transition: TransitionType.inFromRight)
                      //inFromRight方式打开新页面
                    }
                },
              ))));
    }

    return _widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 6.0),
        children: listWidget(context));
  }
}
