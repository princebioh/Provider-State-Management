import 'package:flutter/material.dart';

class SettingsData with ChangeNotifier {
  Color _appBarColor = Colors.blue;

  Color get appBarColor => _appBarColor;

  set appBarColor(Color newColor) {
    _appBarColor = newColor;
    notifyListeners();
  }
}
