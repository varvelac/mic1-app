import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'settings_model.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: SwitchListTile(
        title: const Text('Dark Mode'),
        value: settings.darkMode,
        onChanged: settings.toggleDarkMode,
      ),
    );
  }
}
