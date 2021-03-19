///引入库
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

///引入本地文件
import 'package:flutter_dev/router/route.dart';
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

    //跳转到首页
    void _goToHome() {
      // Navigator.pop(context); //页面出栈
      Routes.router.navigateTo(context, "/",
          transition: TransitionType.inFromRight); //按路由跳转
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
        body: Container(
            color: Color(0xffffffff),
            child: Stack(
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
                                width: double.infinity, //占满
                                height: 294.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xff404AEB),
                                    Colors.lightBlueAccent[700]
                                  ]), //背景渐变
                                ),
                                child: Column(
                                  children: [],
                                )),
                            //必读
                            Container(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  //icon列表
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.5, right: 2.5),
                                      child: Row(children: [
                                        Expanded(
                                            flex: 1,
                                            child: GestureDetector(
                                              child: Column(children: [
                                                Container(
                                                  width: 48.0,
                                                  margin: EdgeInsets.only(
                                                      bottom: 10),
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
                                              onTap: () => _goToHome(), //点击跳转
                                            )),
                                        Expanded(
                                          flex: 1,
                                          child: Column(children: [
                                            Container(
                                              width: 48.0,
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
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
                                          flex: 1,
                                          child: Column(children: [
                                            Container(
                                              width: 48.0,
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
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
                                          flex: 1,
                                          child: Column(children: [
                                            Container(
                                              width: 48.0,
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
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
                            //必读-2
                            Container(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  //icon列表
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.5, right: 2.5),
                                      child: Row(children: [
                                        Column(children: [
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
                                        Expanded(flex: 1, child: SizedBox()),
                                        Column(children: [
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
                                        Expanded(flex: 1, child: SizedBox()),
                                        Column(children: [
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
                                        Expanded(flex: 1, child: SizedBox()),
                                        Column(children: [
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
                                      ]))
                                ],
                              ),
                            ),
                            //风险、答疑
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15.0,
                                  right: 15.0,
                                  bottom: 15.0,
                                  left: 15.0),
                              child: Row(
                                children: [
                                  //左侧
                                  Expanded(
                                      flex: 1,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: Container(
                                            width: double.infinity,
                                            height: 95.0,
                                            padding: EdgeInsets.only(left: 10.0, top: 11.0, right: 0),
                                            decoration: BoxDecoration(
                                              //设置本地背景图
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/test/bg_2.png'),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6.0)),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Text("家居质量评估",
                                                    style: TextStyle(
                                                      height: 1.4285,
                                                      fontSize: 14.0,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xff333333),
                                                    )),
                                                ),
                                                Positioned(
                                                  top: 22.0,
                                                  child: Text("为您智能规划保险方案",
                                                    style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff000000)
                                                          .withOpacity(0.5),
                                                    )),
                                                ),
                                                Positioned(
                                                  top: 36.0,
                                                    child: //自定义按钮
                                                    FlatButton(
                                                      minWidth: 70.0,
                                                      height: 23.0,
                                                      color: Color(0xff28CBA6),
                                                      highlightColor: Colors.blue[700],
                                                      colorBrightness: Brightness.dark,
                                                      splashColor: Colors.grey,
                                                      padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(24)
                                                      ),
                                                      child: Text(
                                                        "立即检测",
                                                        style: TextStyle(
                                                          fontSize: 12.0,
                                                          fontWeight: FontWeight.w500,
                                                        )
                                                      ),
                                                      onPressed: () {},
                                                    ))
                                              ],
                                            ),
                                          )),
                                        ],
                                      )),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  //右侧
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        width: 168.0,
                                        height: 95.0,
                                        padding: EdgeInsets.only(
                                          left: 10.0,
                                          top: 11.0,
                                          right: 58.0,
                                        ),
                                        decoration: BoxDecoration(
                                          //设置本地背景图
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/test/bg_1.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6.0)),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("家居专家团在线答疑",
                                                style: TextStyle(
                                                  height: 1.4285,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff333333),
                                                )),
                                            //普通按钮
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 23,
                                                width: 70,
                                                margin:
                                                    EdgeInsets.only(top: 9.0),
                                                decoration: BoxDecoration(
                                                    color: Color(0xff6C8AFF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11.5)),
                                                child: Center(
                                                  child: Text(
                                                    "立即咨询",
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
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
                ])),
        backgroundColor: ColorString("F5F6FA"));
  }
}
