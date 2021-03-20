///引入库
import 'dart:math';
import 'package:flutter/material.dart';

///引入本地文件
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';
import 'home9/childWidget.dart';

class TestHome9Page extends StatefulWidget {
  TestHome9Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome9PageState createState() => _TestHome9PageState();
}

class _TestHome9PageState extends State<TestHome9Page> {
  ScrollController _controller = new ScrollController();
  bool showFixedTop = false; //是否吸顶
  GlobalKey _centerKey; //声明key

  //状态使用
  bool _btnShow = true; //是否展示、隐藏按钮

  @override
  void initState() {
    super.initState();
    // print('_controller: ${_controller}');

    //变量初始化
    _initVariable();

    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      // print(_controller.offset); //打印滚动位置
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
    Future.delayed(Duration(seconds: 1), () async {
      print(getOffsetKey(_centerKey)); //获取组件位置(x,y)及组件信息.
      _controller.animateTo(getOffsetKey(_centerKey).dy, duration: Duration(milliseconds: 300), curve: Curves.linear); //滚动到指定位置
      // _controller.jumpTo(getOffsetKey(_centerKey).dy); //垂直水平滚动
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

  //展示、隐藏按钮
  void _onBtnChange() {
    setState(() {
      _btnShow = !_btnShow;
    });
  }

  //传递给子组件，子组件调用此方法通知父组件更新状态.
  void _onBtnChildChange(val) {
    print('_onBtnChildChange_${val}');
    setState(() {
      _btnShow = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print("${widget.params},${widget.params['id']}");

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
                height: 200,
                color: Color(0xffffffff).withOpacity(0.6),
                child: Column(
                  children: [
                    _btnShow ? Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text("我是父元素的描述"),
                    ) : SizedBox(),
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(top: 20.0),
                      child: RaisedButton.icon(
                        icon: Icon(Icons.send),
                        label: _btnShow ? Text("隐藏描述") : Text("显示描述"),
                        onPressed: _onBtnChange,
                      )
                    ),
                    TH9ChildWidge(
                      btnShow: _btnShow,
                      onBtnChange: _onBtnChildChange,
                    ),
                  ],
                ),
              )
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 800,
                color: Color(0xff28CBA6).withOpacity(0.6),
              ),
            ),
            // SliverAppBar(
            //   title: Text('我是SliverAppBar'),
            // ),
            SliverToBoxAdapter(
              child: Container(
                key: _centerKey,
                height: 800,
                color: Color(0xffFF8C00).withOpacity(0.6),
              ),
            ),
            // SliverPadding(),
            // SliverFixedExtentList(),
          ]
        ),
        backgroundColor: ColorString("F5F6FA"));
  }
}