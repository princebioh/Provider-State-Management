import 'package:flutter/material.dart';
import 'package:provider_state_management/pages/home_page.dart';
import 'package:provider_state_management/pages/settings_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String settingsPage = '/settings';

  static Route<dynamic> routeNav(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        );

      default:
        throw const FormatException("Page Not Found");
    }
  }
}
