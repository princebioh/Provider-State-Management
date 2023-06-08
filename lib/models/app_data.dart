import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  String _name = "Chuck Norris";
  String get name => _name;

  void changeData(String data) {
    _name = data;
    notifyListeners();
  }
}
