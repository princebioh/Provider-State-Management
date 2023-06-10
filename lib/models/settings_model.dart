import 'package:flutter/material.dart';

class SettingsData with ChangeNotifier {
  // AppBar Settings
  Color _appBarColor = Colors.blue;
  Color get appBarColor => _appBarColor;
  set appBarColor(Color newColor) {
    _appBarColor = newColor;
    notifyListeners();
  }

  // Font Settings
  String _fontFamily = 'Arial';
  String get fontFamily => _fontFamily;
  set fontFamily(String newFont) {
    _fontFamily = newFont;
    notifyListeners();
  }

  double _fontSize = 25;
  double get fontSize => _fontSize;
  set fontSize(double newFont) {
    _fontSize = newFont;
    notifyListeners();
  }
}
