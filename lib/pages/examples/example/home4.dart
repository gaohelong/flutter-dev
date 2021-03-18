import 'package:flutter/material.dart';

import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';

class TestHome4Page extends StatefulWidget {
  TestHome4Page({Key key, this.title, this.params}) : super(key: key);
  final String title;
  Map<String, dynamic> params;

  @override
  _TestHome4PageState createState() => _TestHome4PageState();
}

class _TestHome4PageState extends State<TestHome4Page> {
  String _popWindow = '1'; //是否展示弹窗

  _closePopWindow() {
    setState(() {
      _popWindow = '0';
    });
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
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //头部
                        Container(
                          height: 294.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xff404AEB),
                              Colors.lightBlueAccent[700]
                            ]), //背景渐变
                          ),
                        ),
                        //必读
                        Container(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              //icon列表
                              Padding(
                                  padding: EdgeInsets.only(left: 2.5, right: 2.5),
                                  child: Row(children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 48.0,
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Image.asset(
                                              "assets/images/test/ic_1.png",
                                              width: 100.0,
                                            ),
                                          ),
                                          Text(
                                            '选购必读',
                                            style: TextStyle(
                                              height: 1.416,
                                              fontSize: 12.0,
                                              color: Color(0xff333333),
                                            ),
                                          )
                                        ]),
                                    ),
                                    Expanded(
                                      flex:1,
                                      child: Column(
                                          children: [
                                            Container(
                                              width: 48.0,
                                              margin: EdgeInsets.only(bottom: 10),
                                              child: Image.asset(
                                                "assets/images/test/ic_2.png",
                                                width: 100.0,
                                              ),
                                            ),
                                            Text(
                                              '选购百科',
                                              style: TextStyle(
                                                height: 1.416,
                                                fontSize: 12.0,
                                                color: Color(0xff333333),
                                              ),
                                            )
                                          ]),
                                    ),
                                    Expanded(
                                      flex:1,
                                      child: Column(
                                          children: [
                                            Container(
                                              width: 48.0,
                                              margin: EdgeInsets.only(bottom: 10),
                                              child: Image.asset(
                                                "assets/images/test/ic_3.png",
                                                width: 100.0,
                                              ),
                                            ),
                                            Text(
                                              '选购保险',
                                              style: TextStyle(
                                                height: 1.416,
                                                fontSize: 12.0,
                                                color: Color(0xff333333),
                                              ),
                                            )
                                          ]),
                                    ),
                                    Expanded(
                                      flex:1,
                                      child: Column(
                                          children: [
                                            Container(
                                              width: 48.0,
                                              margin: EdgeInsets.only(bottom: 10),
                                              child: Image.asset(
                                                "assets/images/test/ic_4.png",
                                                width: 100.0,
                                              ),
                                            ),
                                            Text(
                                              '爱心捐赠',
                                              style: TextStyle(
                                                height: 1.416,
                                                fontSize: 12.0,
                                                color: Color(0xff333333),
                                              ),
                                            )
                                          ]),
                                    ),
                                  ]))
                                ],
                              ),
                        ),
                        //家居怎么选择
                        Container(),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
        backgroundColor: ColorString("F5F6FA"));
  }
}
