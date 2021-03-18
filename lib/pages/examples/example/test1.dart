import 'package:flutter/material.dart';
import '../../../tools/moon_extensions.dart';
import '../../../tools/moon_size_extension.dart';

class TestPage extends StatefulWidget {
  TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final String popWindow = '1'; //是否展示弹窗

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "开发测试",
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
              //主体
              SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(children: [
                            Text('我是内容12345678910',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  height: 1.5,
                                ))
                          ]),
                          Row(children: [
                            Text('我是内容12345678910',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  height: 1.5,
                                ))
                          ]),
                        ],
                      )
                  )
              ),
              //浮层
              popWindow == '1'
                  ? Opacity(
                //透明度组件
                opacity: popWindow == '1' ? 0.3 : 0,
                child: Container(
                    color: Colors.black,
                    child: SizedBox()
                ),
              )
                  : Text('')
              //浮层内容
              ,Center(
                  child: Container(
                    height: 400.0,
                    width: 300.0,
                    // color: Colors.lightBlueAccent,
                    decoration: BoxDecoration(//背景装饰
                      gradient: RadialGradient( //背景径向渐变
                          colors: [Colors.red, Colors.orange],
                          center: Alignment.topLeft,
                          radius: .98
                      ),
                      boxShadow: [ //卡片阴影
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0), //圆角
                    ),
                    child: Center(
                        child: Text(
                            'china',
                            style: TextStyle(
                                fontSize: 20.0,
                                height: 1.5,
                                letterSpacing: 1.5,
                                color: Colors.white
                            )
                        )
                    ),
                  )
              ),
            ]),
        backgroundColor: ColorString("F5F6FA"));
  }
}