import 'package:flutter/material.dart';
import 'package:github_sobre/components/item_lista.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(title: ItemLista()),
          ListTile(title: ItemLista()),
          ListTile(title: ItemLista()),
          ListTile(title: ItemLista()),
        ],
      ).toList(),
    );
  }
}
