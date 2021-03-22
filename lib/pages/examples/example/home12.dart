///引入库
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

///引入本地文件
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';
import '../../../provider/Counter.dart';
import '../../../provider/Config.dart';

class TestHome12Page extends StatefulWidget {
  TestHome12Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome12PageState createState() => _TestHome12PageState();
}

class _TestHome12PageState extends State<TestHome12Page> {

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

  @override
  Widget build(BuildContext context) {
    // print("${widget.params},${widget.params['id']}");
    print('home12 Widget build');
    int _count = context.select((Counter counter) => counter.count); //你可以使用 context.select来 只监听count属性, 不能监听Map

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
                  width: 100,
                  height: 30,
                  color: Colors.red,
                  child: RaisedButton.icon(
                    icon: Icon(Icons.send),
                    label: Text("改变姓名"),
                    onPressed: () => {
                      context.read<Counter>().modifyInfo(name: 'cloud-${new Random().nextInt(100)}')
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.red,
                  child: RaisedButton.icon(
                    icon: Icon(Icons.send),
                    label: Text("改变年龄"),
                    onPressed: () => {
                      context.read<Counter>().modifyInfo(age: new Random().nextInt(100))
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.red,
                  child: RaisedButton.icon(
                    icon: Icon(Icons.send),
                    label: Text("自增"),
                    onPressed: () => {
                      context.read<Counter>().increment()
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 30,
                  color: Colors.red,
                  child: Text(
                    // '${Provider.of<Counter>(context).count}-${Provider.of<Counter>(context).sum}',
                    '姓名: ${Provider.of<Counter>(context).info["name"]}'
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                    height: 30,
                    color: Colors.blue,
                    child: Text(
                      // '${Provider.of<Counter>(context).count}'
                      '年龄: ${context.read<Counter>().info["age"]}'
                    )
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 30,
                  color: Colors.red,
                  child: Text(
                    'cuont: ${_count}'
                  ),
                ),
              ),
            ]
        ),
        backgroundColor: ColorString("F5F6FA"));
  }
}