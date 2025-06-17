import 'package:flutter/foundation.dart';

class SettingsModel extends ChangeNotifier {
  bool darkMode = false;

  void toggleDarkMode(bool value) {
    darkMode = value;
    notifyListeners();
  }
}
