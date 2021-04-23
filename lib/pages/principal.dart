import 'package:flutter/material.dart';
import 'package:github_sobre/pages/sobre.dart';
import 'home.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _selected = 0;
  String _captionTitle = "Home";

  static List<Widget> _widGetOptions = <Widget>[
    Home(),
    Sobre(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selected = index;
      _captionTitle = index == 0 ? "Home" : "Sobre";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_captionTitle),
      ),
      body: Center(
        child: _widGetOptions.elementAt(_selected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Sobre",
          ),
        ],
        currentIndex: _selected,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
