import 'dart:convert';

import 'package:inn_touch/src/config/export_config.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.image,
    required this.id,
    required this.name,
    required this.email,
  });

  String? image;
  String id;
  String name;
  String email;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "email": email,
  };
  factory UserModel.fromSnap(DocumentSnapshot snap) {
    var data = snap.data() as Map<String, dynamic>;
    return UserModel(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      image: data['image'],
    );
  }
  UserModel copyWith({String? name, image}) => UserModel(
    id: id,
    name: name ?? this.name,
    email: email,
    image: image ?? this.image,
  );
}
