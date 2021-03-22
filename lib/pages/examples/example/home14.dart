///引入库
import 'dart:math';
import 'package:flutter/material.dart';

//Event bus
import '../../../utils/eventBusUtils.dart';

///引入本地文件
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';

class TestHome14Page extends StatefulWidget {
  TestHome14Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome14PageState createState() => _TestHome14PageState();
}

class _TestHome14PageState extends State<TestHome14Page> {

  @override
  void initState() {
    super.initState();
    // print('_controller: ${_controller}');

    //变量初始化
    _initVariable();
  }

  void _initVariable() {}

  @override
  void dispose() {
    super.dispose();
  }

  //通过组件唯一key获取组件信息.
  Offset getOffsetKey(GlobalKey key) {
    RenderBox renderBox = key.currentContext.findRenderObject();
    return renderBox.localToGlobal(Offset.zero);
  }

  _onLogin() {
    print('_onLogin');
    bus.emit("login", {
      "name": "cloud",
      "age": "30",
      "sex": "man"
    });
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
          elevation: 5,
        ),
        //父容器
        body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.blue,
                ),
              ),
              // SliverAppBar(
              //   title: Text('我是SliverAppBar'),
              // ),
              SliverToBoxAdapter(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.red,
                  child: RaisedButton.icon(
                    icon: Icon(Icons.send),
                    label: Text("Login123"),
                    onPressed: () => _onLogin(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
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