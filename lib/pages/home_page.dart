import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/models/settings_model.dart';
import 'package:provider_state_management/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsData>().appBarColor,
        title: const Text(
          "Provider",
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.settingsPage);
            },
            icon: const Icon(Icons.settings),
            splashRadius: 30,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Name is Prince Bioh",
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Arial",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
