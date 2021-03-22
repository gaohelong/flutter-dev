import 'dart:math';
import 'package:flutter/foundation.dart';

//Provider ChangeNotifier
class Config with ChangeNotifier, DiagnosticableTreeMixin {
  String _title = '中国家居';

  String get title => _title;

  setTitle(String title) {
    print('title: ${title}');
    print('this.title: ${this.title}');
    _title = title;
    notifyListeners();
  }
}