class UserModel {
    UserModel({
        required this.login,
        required this.id,
        required this.avatarUrl,
    });

    String login;
    int id;
    String avatarUrl;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        login: json["login"],
        id: json["id"],
        avatarUrl: json["avatar_url"],
    );

    Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "avatar_url": avatarUrl,
    };
}
