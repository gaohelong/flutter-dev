import 'package:flutter/material.dart';

/// text组件
class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

/// Layout
class _TextPageState extends State<TextPage> {
  String text = 'China';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print(args); // 输出接收到的参数
    print(args.runtimeType); // 输出数据类型

    return Scaffold(
      appBar: AppBar(
        title: Text(args),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'increment:',
            ),
            Text(
              "Hello world",
              textAlign: TextAlign.left,
            ),
            Text(
              "Hello world! I'm Jack. " * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello world",
              textScaleFactor: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
