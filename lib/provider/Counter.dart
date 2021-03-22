import 'package:flutter/foundation.dart';

//Provider ChangeNotifier
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;
  int _sum = 0;

  int get count => _count;
  int get sum => _sum;

  increment() {
    _count++;
    notifyListeners();
  }

  total(int x, int y) {
    _sum = x + y;
    notifyListeners();
  }

  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(IntProperty('count', count));
  // }
}