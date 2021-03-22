///引入库
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

///引入本地文件
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';
import '../../../provider/Counter.dart';
import '../../../provider/Config.dart';

class TestHome13Page extends StatefulWidget {
  TestHome13Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome13PageState createState() => _TestHome13PageState();
}

class _TestHome13PageState extends State<TestHome13Page> {
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
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: 100,
              height: 30,
              color: Colors.red,
              child: RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("自增"),
                onPressed: () => {context.read<Counter>().increment()},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 100,
              height: 30,
              color: Colors.red,
              child: Text(
                "${new Random().nextInt(100)}"
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(16.0),
              height: 300,
              color: Colors.lightBlueAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // '${Provider.of<Counter>(context).count}-${Provider.of<Counter>(context).sum}',
                    '姓名: cloud-${new Random().nextInt(100)}'
                  ),
                  Text(
                    // '${Provider.of<Counter>(context).count}'
                    '年龄: 18-${new Random().nextInt(100)}'
                  ),
                  Consumer<Counter>( //只有Consumer中的widget才会重绘.
                    builder: (context, single, child) {
                      print('我重绘了');
                      return Column(
                        children: [
                          Text(
                            // 'cuont: ${Provider.of<Counter>(context, listen: false).count}' //只有Consumer中widget会发生改变
                            'cuont: ${Provider.of<Counter>(context).count}' //只有Consumer中widget会发生改变
                          ),
                        ],
                      );
                    }
                  ),
                ],
              )
            ),
          ),
        ]),
        backgroundColor: ColorString("F5F6FA"));
  }
}
