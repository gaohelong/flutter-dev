///引入库
import 'package:flutter/material.dart';

///引入本地文件
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';
import 'list-t2.dart';

class TestHome6Page extends StatefulWidget {
  TestHome6Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome6PageState createState() => _TestHome6PageState();
}

class _TestHome6PageState extends State<TestHome6Page> {
  ScrollController _controller = new ScrollController();
  bool showFixedTop = false; //是否吸顶

  @override
  void initState() {
    super.initState();
    print('_controller: ${_controller}');

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
        body: Stack(
          fit: StackFit.expand, //未
          children: [
            Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: ListT2(controller: _controller)),
            showFixedTop
                ? Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      height: 50.0,
                      child: Column(
                        children: [],
                      ),
                    ))
                : Positioned(
                    top: 0,
                    left: 0,
                    child: SizedBox(),
                  )
          ],
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
