import 'package:flutter/material.dart';

import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';
import '../example/list-t1.dart';

class TestHome3Page extends StatefulWidget {
  TestHome3Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome3PageState createState() => _TestHome3PageState();
}

class _TestHome3PageState extends State<TestHome3Page> {
  final String popWindow = '0'; //是否展示弹窗

  @override
  Widget build(BuildContext context) {
    print("${widget.params},${widget.params['id']}");

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "首页开发-布局练习3",
            style: TextStyle(
                color: ColorString("373737"),
                fontSize: 40.scaleW,
                fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 1,
        ),
        body: Stack(
            //按照从上到下的顺序排列, 最下面的层级最高.
            alignment: Alignment.center,
            fit: StackFit.expand, //未定位widget占满Stack整个空间
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  child: ListT1(),
                ),
              ),
              popWindow != '1'
                  ? Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    )
                  : SizedBox(),
              popWindow != '1'
                  ? Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Column(children: [
                        Expanded(
                          child: SizedBox(),
                          flex: 10,
                        ),
                        Expanded(
                          flex: 90,
                          child: Column(
                            children: [
                              Container(
                                height: 400.0,
                                width: 300.0,
                                // color: Colors.lightBlueAccent,
                                padding: EdgeInsets.only(top: 100),
                                decoration: BoxDecoration(
                                  //背景装饰
                                  gradient: RadialGradient(
                                    //背景径向渐变
                                      colors: [Colors.red, Colors.orange],
                                      center: Alignment.topLeft,
                                      radius: .98),
                                  boxShadow: [
                                    //卡片阴影
                                    BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 4.0)
                                  ],
                                  borderRadius: BorderRadius.circular(12.0), //圆角
                                ),
                                child: Center(
                                    child: Text('china',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            height: 1.5,
                                            letterSpacing: 1.5,
                                            color: Colors.white))),
                              )
                            ],
                          ))
                      ]))
                  : SizedBox(),
            ]),
        backgroundColor: ColorString("F5F6FA"));
  }
}
