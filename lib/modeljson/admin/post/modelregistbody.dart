// To parse this JSON data, do
//
//     final registBody = registBodyFromJson(jsonString);

import 'dart:convert';

class RegistBody {
  RegistBody({
    this.email,
    this.firstName,
    this.lastName,
    this.password,
  });

  String? email;
  String? firstName;
  String? lastName;
  String? password;

  factory RegistBody.fromRawJson(String str) =>
      RegistBody.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegistBody.fromJson(Map<String, dynamic> json) => RegistBody(
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        password: json["password"] == null ? null : json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "password": password == null ? null : password,
      };
}
