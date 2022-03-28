// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.user,
  });

  UserClass? user;

  factory User.fromJson(Map<String, dynamic> json) => User(
        user: json["user"] == null ? null : UserClass.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user == null ? null : user!.toJson(),
      };
}

class UserClass {
  UserClass({
    this.id,
    this.email,
    this.role,
    this.firstName,
    this.lastName,
    this.apiToken,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.metadata,
  });

  String? id;
  String? email;
  String? role;
  dynamic firstName;
  dynamic lastName;
  String? apiToken;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic metadata;

  factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        role: json["role"] == null ? null : json["role"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        apiToken: json["api_token"] == null ? null : json["api_token"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "role": role == null ? null : role,
        "first_name": firstName,
        "last_name": lastName,
        "api_token": apiToken == null ? null : apiToken,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}
