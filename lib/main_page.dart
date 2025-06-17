import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'settings_page.dart';
import 'settings_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SettingsPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          settings.darkMode ? 'Dark mode is ON' : 'Dark mode is OFF',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
