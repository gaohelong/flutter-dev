///引入库
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';

///引入本地库
import 'http_error.dart';

///基础配置
BaseOptions options = new BaseOptions(
  // baseUrl: "https://api.github.com",
  baseUrl: "http://192.168.2.23:6666",
  connectTimeout: 30000, //链接超时时间
  receiveTimeout: 30000, //接收超时时间
  // contentType: "application/json; charset=utf-8",
);
Dio _dio = new Dio(options);

/// 请求成功回调
typedef HttpSuccessCallback<T> = void Function(dynamic data);

/// 请求失败回调
typedef HttpFailureCallback = void Function(HttpError data);

class HttpManage {
  static String testUrl = '/';

  ///构造函数
  HttpManage() {
    //拦截器
    _dio.interceptors.add(InterceptorsWrapper(
        onRequest:(RequestOptions options) async {
          // print('onRequest: ${options}');
          // 在请求被发送之前做一些事情
          return options; //continue
          // 如果你想完成请求并返回一些自定义数据，可以返回一个`Response`对象或返回`dio.resolve(data)`。
          // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义数据data.
          //
          // 如果你想终止请求并触发一个错误,你可以返回一个`DioError`对象，或返回`dio.reject(errMsg)`，
          // 这样请求将被中止并触发异常，上层catchError会被调用。
        },
        onResponse:(Response response) async {
          // print('onResponse: ${response}');
          // 在返回响应数据之前做一些预处理
          return response; // continue
        },
        onError: (DioError e) async {
          // print('onError: ${e}');
          // 当请求失败时做一些预处理
          return e;//continue
        }
    ));
  }

  ///get请求
  get({ String url, Map<String, dynamic> params, HttpSuccessCallback successCallback, HttpFailureCallback errorCallback }) async {
    try {
      dynamic res = await _dio.get(url, queryParameters: params);
      // print(errorCallback);
      if (errorCallback == null) {
        errorCallback(HttpError("0", "请求异常!")); //异常处理
      } else {
        successCallback(res.data); //成功后调
      }
    } on DioError catch (e, s) {
      if (errorCallback != null && e.type != DioErrorType.CANCEL) {
        errorCallback(HttpError.dioError(e));
      }
    } catch (e, s) {
      if (errorCallback != null) {
        errorCallback(HttpError(HttpError.UNKNOWN, "网络异常，请稍后重试！"));
      }
    }
  }
}

///扩展HttpManage类, 扩展类不用实例化直接可以调用并且没有构造函数.
extension HttpApi on HttpManage {
  // static get({ String url, Map<String, dynamic> params, HttpSuccessCallback successCallback }) async {
  //   dynamic res = await _dio.get(url, queryParameters: params);
  //   successCallback(res.data);
  // }

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
