class InfoGitHub {
  String name;
  String fullName;
  DateTime createdAt;

  InfoGitHub({this.name, this.fullName, this.createdAt});

  InfoGitHub.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    fullName = json['full_name'];
    createdAt = DateTime.parse(json['created_at']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['full_name'] = this.fullName;
    data['created_at'] = this.createdAt;
    return data;
  }
}
