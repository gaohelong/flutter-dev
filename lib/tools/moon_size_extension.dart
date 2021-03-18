import 'package:flutter_screenutil/screenutil.dart';

var screenWidth = ScreenUtil().screenWidth;
var screenHeight = ScreenUtil().screenHeight;
var statusBarHeight = ScreenUtil().statusBarHeight;
var bottomBarHeight = ScreenUtil().bottomBarHeight;
var safeHeight = screenHeight - bottomBarHeight - bottomBarHeight;

extension SizeClass on num
{
  static double scale = 1.44;

  num get scaleW => ScreenUtil().setWidth(this) * scale;
  num get scaleH => ScreenUtil().setHeight(this) * scale;
  num get scaleSp => ScreenUtil().setSp(this) * scale;
  num get scaleSsp => ScreenUtil().setSp(this, allowFontScalingSelf: false) * scale;

}