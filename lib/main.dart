import 'package:flutter/material.dart';
import 'package:github_sobre/pages/principal.dart';
import 'package:github_sobre/settings.dart';
import 'package:github_sobre/themes/dark.theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Github Sobre',
      // theme: Settings.currentTheme(),
      theme: darkTheme(),
      home: Principal(),
    );
  }
}
