import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'settings_model.dart';
import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsModel(),
      child: Consumer<SettingsModel>(
        builder: (context, settings, _) {
          return MaterialApp(
            title: 'Flutter Boilerplate',
            theme: ThemeData(
              brightness:
                  settings.darkMode ? Brightness.dark : Brightness.light,
              primarySwatch: Colors.blue,
            ),
            home: const MainPage(),
          );
        },
      ),
    );
  }
}
