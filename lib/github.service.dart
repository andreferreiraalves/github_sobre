import 'package:dio/dio.dart';
import 'info_github.model.dart';

class GitHubService {
  Future<List<InfoGitHub>> getAll() async {
    Response res = await Dio()
        .get("https://api.github.com/users/andreferreiraalves/repos");

    return (res.data as List).map((e) => InfoGitHub.fromJson(e)).toList();
  }
}
