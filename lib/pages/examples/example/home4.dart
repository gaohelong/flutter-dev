import 'package:flutter/material.dart';

import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';
import '../example/list-t1.dart';

class TestHome4Page extends StatefulWidget {
  TestHome4Page({Key key}) : super(key: key);

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
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "首页开发-布局练习4",
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
              _popWindow == '1'
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
              _popWindow == '1'
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
                                    width: 300.0,
                                    height: 422.0,
                                    // color: Colors.lightBlueAccent,
                                    // padding: EdgeInsets.only(top: 27.0),
                                    decoration: BoxDecoration(
                                      //背景装饰
                                      // gradient: RadialGradient(
                                      //   //背景径向渐变
                                      //     colors: [Colors.red, Colors.orange],
                                      //     center: Alignment.topLeft,
                                      //     radius: .98),

                                      //设置网络背景图
                                      // image: const DecorationImage(
                                      //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      //   fit: BoxFit.cover,
                                      // ),

                                      //设置本地背景图
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/test/bg_shouye_tanc_bd@3x.png'),
                                        fit: BoxFit.cover,
                                      ),

                                      boxShadow: [
                                        //卡片阴影
                                        BoxShadow(
                                            color: Colors.black54,
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 4.0)
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(12.0), //圆角
                                    ),
                                    child: Stack(
                                      children: [
                                        //顶部文字
                                        Positioned(
                                            top: 27.0,
                                            left: 0,
                                            right: 0,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text('家庭保单管理',
                                                      style: TextStyle(
                                                        height: 1.35,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                        letterSpacing: 1.5,
                                                      )),
                                                  Text('一键整理，全家无忧!',
                                                      style: TextStyle(
                                                        height: 1.35,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                        letterSpacing: 1.5,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(top: 10.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text("附近有", style: TextStyle(color: Color(0xffffffff))),
                                                          Container(
                                                            margin: EdgeInsets.only(left: 5.0, right: 3.0),
                                                            padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                                                            width: 22.0,
                                                            decoration: BoxDecoration(
                                                              color: Color(0xffEEF1FF),
                                                              borderRadius: BorderRadius.circular(2.0), //圆角
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "9",
                                                                  style: TextStyle(
                                                                    fontSize: 14.0,
                                                                    color: Color(0xff4166F5),
                                                                  ),
                                                                )
                                                              ]
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(right: 3.0),
                                                            padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                                                            width: 22.0,
                                                            decoration: BoxDecoration(
                                                              color: Color(0xffEEF1FF),
                                                              borderRadius: BorderRadius.circular(2.0), //圆角
                                                            ),
                                                            child: Column(
                                                                children: [
                                                                  Text(
                                                                    "8",
                                                                    style: TextStyle(
                                                                      fontSize: 14.0,
                                                                      color: Color(0xff4166F5),
                                                                    ),
                                                                  )
                                                                ]
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(right: 3.0),
                                                            padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                                                            width: 22.0,
                                                            decoration: BoxDecoration(
                                                              color: Color(0xffEEF1FF),
                                                              borderRadius: BorderRadius.circular(2.0), //圆角
                                                            ),
                                                            child: Column(
                                                                children: [
                                                                  Text(
                                                                    "7",
                                                                    style: TextStyle(
                                                                      fontSize: 14.0,
                                                                      color: Color(0xff4166F5),
                                                                    ),
                                                                  )
                                                                ]
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(left: 3.0, right: 5.0),
                                                            padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                                                            width: 22.0,
                                                            decoration: BoxDecoration(
                                                              color: Color(0xffEEF1FF),
                                                              borderRadius: BorderRadius.circular(2.0), //圆角
                                                            ),
                                                            child: Column(
                                                                children: [
                                                                  Text(
                                                                    "6",
                                                                    style: TextStyle(
                                                                      fontSize: 14.0,
                                                                      color: Color(0xff4166F5),
                                                                    ),
                                                                  )
                                                                ]
                                                            ),
                                                          ),
                                                          Text("人已启用", style: TextStyle(color: Color(0xffffffff)))
                                                        ],
                                                      )),
                                                ])),

                                        //右上角关闭按钮
                                        Positioned(
                                          top: 8.0,
                                          right: 8.0,
                                          child: GestureDetector(
                                            child: Container(
                                              width: 32.0,
                                              height: 32.0,
                                              decoration: BoxDecoration(
                                                //设置本地背景图
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/test/ic_home_off@3x.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            onTap: () => _closePopWindow(),//点击
                                          ),
                                        ),

                                        //按钮
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 56.0,
                                          child: Column(
                                            children: [
                                              FlatButton(
                                                color: Color(0xffFF8C00),
                                                // textColor: Color(0xffffffff),
                                                highlightColor: Colors.blue[700],
                                                colorBrightness: Brightness.dark,
                                                splashColor: Colors.grey,
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                                                minWidth: 250.0,
                                                onPressed: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                                                  child: Text(
                                                    "立即管理家庭保单",
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        // 底部文字
                                        Positioned(
                                            left: 0,
                                            right: 0,
                                            bottom: 28.0,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text.rich(TextSpan(children: [
                                                    TextSpan(
                                                        text: "平台已管理保单突破",
                                                        style: TextStyle(
                                                            fontSize: 13.0,
                                                            color: Color(
                                                                    0xff666666)
                                                                .withOpacity(
                                                                    0.9))),
                                                    TextSpan(
                                                      text: "128,573",
                                                      style: TextStyle(
                                                        fontSize: 13.0,
                                                        color:
                                                            Color(0xffFF8C00),
                                                        backgroundColor:
                                                            Colors.white,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                        text: "份",
                                                        style: TextStyle(
                                                            fontSize: 13.0,
                                                            color: Color(
                                                                    0xff666666)
                                                                .withOpacity(
                                                                    0.9))),
                                                  ]))
                                                ]))
                                      ],
                                    ))
                              ],
                            ))
                      ]))
                  : SizedBox(),
            ]),
        backgroundColor: ColorString("F5F6FA"));
  }
}
