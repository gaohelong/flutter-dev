///引入库
import 'package:flutter/material.dart';

///引入本地文件
import '../../../../tools/moon_extensions.dart';
import '../../../../tools/moon_size_extension.dart';

class TH9ChildWidge extends StatelessWidget {
  TH9ChildWidge({Key key, this.btnShow: true, @required this.onBtnChange}) : super(key: key);
  final bool btnShow;
  final ValueChanged onBtnChange;

  void _onBtnPHandler() {
    onBtnChange(!btnShow); //调用父组件传递过来的方法
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 30,
        margin: EdgeInsets.only(top: 20.0),
        child: RaisedButton.icon(
          icon: Icon(Icons.send),
          label: btnShow ? Text("隐藏父描述") : Text("显示父描述"),
          onPressed: _onBtnPHandler,
        )
    );
  }
}