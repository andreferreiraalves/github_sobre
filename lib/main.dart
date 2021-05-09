import 'package:flutter/material.dart';
import 'package:github_sobre/pages/principal.dart';
import 'package:github_sobre/themes/light.theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Github Sobre',
      theme: lightTheme(),
      home: Principal(),
    );
  }
}
