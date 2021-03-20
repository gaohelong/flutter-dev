import 'package:flutter/foundation.dart';

//Provider ChangeNotifier
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;

  int get count => _count;

  increment() {
    _count++;
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}