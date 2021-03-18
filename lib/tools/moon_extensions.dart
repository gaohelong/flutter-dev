import 'package:flutter/material.dart';

extension MNString on String {
  Size paintWidthWithTextStyle(TextStyle style, {double minWidth = 0, double maxWidth = double.infinity, int maxLine = 1}) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: this, style: style),
        maxLines: maxLine,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: minWidth, maxWidth: maxWidth);
    return textPainter.size;
  }
}

Color MNColor(int rgb)
{
  int r = (rgb & 0xFF0000) >> 16 ;
  int g =  (rgb & 0x00FF00) >> 8;
  int b = (rgb & 0x0000FF) >> 0;
  return Color.fromRGBO(r, g, b, 1);
}

Color ColorString(String rgbString)
{
  var str = rgbString;
  if (str.length == 7) {
    str = str.substring(1);
  }
  if (str.length == 8) {
    str = str.substring(2);
  }

  int rgb = int.parse("0x$str");
  return MNColor(rgb);
}