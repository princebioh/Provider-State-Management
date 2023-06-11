import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:provider_state_management/models/settings_model.dart";

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController fontFamilyController = TextEditingController();
  TextEditingController fontSizeController = TextEditingController();
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
              child: const Text("Change AppBar Color to Deep Purple"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SettingsData>().appBarColor = Colors.black87;
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
              child: const Text("Change AppBar Color to Black"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Font Family",
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: fontFamilyController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<SettingsData>().fontFamily =
                        fontFamilyController.text;
                    fontFamilyController.clear();
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Font Size",
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: fontSizeController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<SettingsData>().fontSize =
                        double.parse(fontSizeController.text);
                    fontSizeController.clear();
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.brightness_6),
              ),
              title: const Text("Theme"),
              subtitle: const Text("Light"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog();
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
