import 'package:flutter/foundation.dart';

//Provider ChangeNotifier
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;
  int _sum = 0;
  Map<String, dynamic> _info = {
    "name": 'cloud',
    "age": 28
  };

  int get count => _count;
  int get sum => _sum;
  get info => _info;

  increment() {
    _count++;
    notifyListeners();
  }

  total(int x, int y) {
    _sum = x + y;
    notifyListeners();
  }

  modifyInfo({ String name, int age }) {
    // print('${name}-${age}');
    if (name != null) {
      _info["name"] = name;
    }

    if (age != null) {
      _info["age"] = age;
    }

    // print(_info);
    notifyListeners();
  }

  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(IntProperty('count', count));
  // }
}