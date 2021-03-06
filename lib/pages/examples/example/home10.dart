///引入库
import 'dart:math';
import 'package:flutter/material.dart';

///引入本地文件
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';

class TestHome10Page extends StatefulWidget {
  TestHome10Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome10PageState createState() => _TestHome10PageState();
}

class _TestHome10PageState extends State<TestHome10Page> {
  ScrollController _controller = new ScrollController();
  bool showFixedTop = false; //是否吸顶

  GlobalKey _centerKey; //声明key

  @override
  void initState() {
    super.initState();
    // print('_controller: ${_controller}');

    //变量初始化
    _initVariable();

    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置
      if (_controller.offset < 300 && showFixedTop) {
        setState(() {
          showFixedTop = false;
        });
      } else if (_controller.offset >= 300 && showFixedTop == false) {
        setState(() {
          showFixedTop = true;
        });
      }
    });

    //延迟操作
    Future.delayed(Duration(seconds: 2), () async {
      print(getOffsetKey(_centerKey)); //获取组件位置(x,y)及组件信息.
      // _controller.animateTo(getOffsetKey(_centerKey).dy, duration: Duration(milliseconds: 300), curve: Curves.linear); //滚动到指定位置
      _controller.jumpTo(getOffsetKey(_centerKey).dy);
    });
  }

  void _initVariable() {
    _centerKey = GlobalKey(); //赋值key
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  //通过组件唯一key获取组件信息.
  Offset getOffsetKey(GlobalKey key) {
    RenderBox renderBox = key.currentContext.findRenderObject();
    return renderBox.localToGlobal(Offset.zero);
  }

  //分享
  void _shareHandler() {
    print('share');
  }

  //邮件
  void _emailHandler() {
    print('email');
  }

  //投屏
  void _tvHandler() {
    print('tv');
  }

  @override
  Widget build(BuildContext context) {
    print("${widget.params},${widget.params['id']}");

    return Scaffold(
        appBar: AppBar(
          //title居中对齐
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(
                color: ColorString("373737"),
                fontSize: 40.scaleW,
                fontWeight: FontWeight.w400),
          ),
          //bar-左侧
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //bar-右侧
          actions: [
            IconButton(
              icon: Icon(
                Icons.airplay_sharp,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                _tvHandler();
              },
            ),
            IconButton(
              icon: Icon(
                Icons.attach_email,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                _emailHandler();
              },
            ),
            IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                _shareHandler();
              },
            )
          ],
          elevation: 5,
        ),
        //父容器
        body: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 900,
                color: Colors.blue,
              ),
            ),
            // SliverAppBar(
            //   title: Text('我是SliverAppBar'),
            // ),
            SliverToBoxAdapter(
              child: Container(
                key: _centerKey, //设置key.
                height: 900,
                color: Colors.red,
              ),
            ),
            // SliverPadding(),
            // SliverFixedExtentList(),
          ]
        ),
        backgroundColor: ColorString("F5F6FA"));
  }
}