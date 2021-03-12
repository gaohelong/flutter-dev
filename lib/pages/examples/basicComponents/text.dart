///引入库
import 'package:flutter/material.dart';

///本地
import 'package:flutter_dev/router/route.dart';

/// text组件
class TextPage extends StatefulWidget {
  TextPage({Key key, this.title, this.id}) : super(key: key);
  final String title;
  final String id;

  @override
  _TextPageState createState() => _TextPageState();
}

/// Layout
class _TextPageState extends State<TextPage> {
  String text = 'China';

  @override
  Widget build(BuildContext context) {
    print(widget.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
