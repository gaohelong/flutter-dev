///引入库
import 'package:flutter/material.dart';

///本地
import '../../network/dio.dart'; //相对路径引入本地文件-网络请求
import 'package:flutter_dev/router/route.dart'; //绝对路径引入本地文件-引入路由
import '../../models/GitApiDetail.dart'; //解析Http请求返回的json
import 'gitDetail.dart'; //git详情展示

///dio网络请求实例
class DioPage extends StatefulWidget {
  DioPage({Key key, this.title, this.params}) : super(key: key);
  final String title;
  final Map<String, String> params;

  @override
  _DioPageState createState() => _DioPageState();
}

/// Layout
class _DioPageState extends State<DioPage> {
  GitApiDetail _detail;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.params['id']);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            child: _detail != null
                ? GitDetailPage(detail: _detail)
                : Text('loading...')),
      ),
    );
  }

  void _loadData() {
    //请求数据
    HttpManage().get(
      url: "/posts",
      params: {"id": 1},
      successCallback: (data) {
        // print(data);
        // _data = GitApiDetail.fromJson(data);
        // _data = GitApiDetail.fromJson({ "current_user_url": "https://api.github.com/user"});
        // print(_data.currentUserUrl);
        // print(_data.currentUserAuthorizationsHtmlUrl);

        dynamic detail = data[0];
        // print(detail);
        setState(() {
          _detail = GitApiDetail.fromJson(detail);
        });
      },
    );
  }
}
