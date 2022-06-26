import 'dart:convert';

User userFromJson(String str) {
  final jsonData = json.decode(str);
  return User.fromMap(jsonData);
}

String userToJson(User data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

class User {
  String userId;
  String password;

  User({
    this.userId,
    this.password,
  });

  factory User.fromMap(Map<String, dynamic> json) => new User(
        userId: json["userId"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "password": password,
      };
}
