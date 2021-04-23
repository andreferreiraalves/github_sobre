import 'package:flutter/material.dart';
import 'package:github_sobre/components/item_lista.dart';
import 'package:github_sobre/github.service.dart';

import '../info_github.model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<InfoGitHub> repos = [];

  @override
  void initState() {
    super.initState();

    GitHubService().getAll().then((value) {
      repos = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: ListTile.divideTiles(
    //     context: context,
    //     tiles: [
    //       ListTile(
    //         title: ItemLista(
    //           titulo: "Alura 1",
    //           data: DateTime.now(),
    //           nomeFull: "andreferreiraalves/alura-timer",
    //         ),
    //       ),
    //     ],
    //   ).toList(),
    // );
    //
    return this.lista();
  }

  Widget lista() {
    return ListView.builder(
      itemCount: repos.length,
      itemBuilder: (context, index) {
        var repo = this.repos[index];
        return ListTile(
          title: ItemLista(
            titulo: repo.name,
            nomeFull: repo.fullName,
            data: repo.createdAt,
          ),
        );
      },
    );
  }
}
