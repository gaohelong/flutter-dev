///引入库
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';

///基础配置
BaseOptions options = new BaseOptions(
  baseUrl: "https://api.github.com",
  connectTimeout: 30000, //链接超时时间
  receiveTimeout: 30000, //接收超时时间
  // contentType: "application/json; charset=utf-8",
);
Dio _dio = new Dio(options);

/// 请求成功回调
typedef HttpSuccessCallback<T> = void Function(dynamic data);

class Api {
  static String testUrl = '/';
}

///扩展Api类
extension HttpApi on Api {
  static get({ String url, Map<String, dynamic> params, HttpSuccessCallback successCallback }) async {
    dynamic res = await _dio.get(url);
    successCallback(res.data);

  }

  // /// 获取文章列表
  // static getPosts() async {
  //   print(Api.testUrl);
  //   dynamic res = await _dio.get(Api.testUrl);
  //   // print(json.decode(res.data));
  //   // Map<String, dynamic> response = json.decode(res.data);
  //   // print(res.data.toString());
  //   return res.data;
  // }
}
