///引入库
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluro/fluro.dart';

///引入本地文件
import 'package:flutter_dev/router/route.dart';
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';

class TestHome5Page extends StatefulWidget {
  TestHome5Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome5PageState createState() => _TestHome5PageState();
}

class _TestHome5PageState extends State<TestHome5Page> {
  ScrollController _controller = new ScrollController();
  bool showFixedTop = false; //是否吸顶

  @override
  void initState() {
    super.initState();
    print('_controller: ${_controller}');

    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置
      if (_controller.offset < 100 && showFixedTop) {
        setState(() {
          showFixedTop = false;
        });
      } else if (_controller.offset >= 100 && showFixedTop == false) {
        setState(() {
          showFixedTop = true;
        });
      }
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("${widget.params},${widget.params['id']}");

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
        body: Scrollbar(
          child: ListView.builder(
              itemCount: 100,
              itemExtent: 50.0, //列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
              controller: _controller,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("$index"),
                );
              }),
        ),
        floatingActionButton: !showFixedTop
            ? null
            : FloatingActionButton(
                child: Icon(Icons.arrow_upward),
                onPressed: () {
                  //返回到顶部时执行动画
                  _controller.animateTo(.0,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease);
                }),
        backgroundColor: ColorString("F5F6FA"));
  }
}
