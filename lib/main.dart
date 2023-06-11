import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/models/app_data.dart';
import 'package:provider_state_management/models/settings_model.dart';
import 'package:provider_state_management/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppData(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingsData(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          initialRoute: RouteManager.homePage,
          onGenerateRoute: RouteManager.routeNav,
          darkTheme: context.watch<SettingsData>().isDarkTheme
              ? ThemeData.dark()
              : null,
        );
      },
    );
  }
}
