import 'package:flutter/material.dart';
import 'package:github_sobre/themes/dark.theme.dart';
import 'package:github_sobre/themes/light.theme.dart';

class Settings {
  static String theme = 'light';

  static ThemeData currentTheme() {
    switch (theme) {
      case 'light':
        return lightTheme();
      case 'dark':
        return darkTheme();
      default:
        return lightTheme();
    }
  }
}
