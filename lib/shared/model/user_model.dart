// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    String user;
    String password;

    UserModel({
        required this.user,
        required this.password,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        user: json["user"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "password": password,
    };
}
