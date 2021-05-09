import 'package:flutter/material.dart';
import 'package:github_sobre/components/item_lista.dart';
import 'package:github_sobre/components/loader.dart';
import 'package:github_sobre/github.service.dart';

import '../info_github.model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<InfoGitHub> repos;

  @override
  void initState() {
    super.initState();

    GitHubService().getAll().then((value) {
      setState(() {
        repos = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Loader(object: repos, callBack: lista);
  }

  Widget lista(BuildContext context) {
    return ListView.builder(
      itemCount: repos.length,
      itemBuilder: (context, index) {
        var repo = this.repos[index];
        return ItemLista(
          titulo: repo.name,
          nomeFull: repo.fullName,
          data: repo.createdAt,
        );
      },
    );
  }
}
