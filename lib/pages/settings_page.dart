import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:provider_state_management/models/settings_model.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<SettingsData>().appBarColor = Colors.deepPurple;
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text("DeepPurple"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SettingsData>().appBarColor = Colors.black87;
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
              child: const Text("Black"),
            ),
          ],
        ),
      ),
    );
  }
}
