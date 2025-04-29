import 'dart:convert';

LoginResModel loginResModelFromJson(String str) =>
    LoginResModel.fromJson(json.decode(str));
String loginResModelToJson(LoginResModel data) => json.encode(data.toJson());

class LoginResModel {
  LoginResModel({
    this.refresh,
    this.access,
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.dob,
    this.gender,
  });

  LoginResModel.fromJson(dynamic json) {
    refresh = json['refresh'];
    access = json['access'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    dob = json['dob'];
    gender = json['gender'];
  }
  String? refresh;
  String? access;
  num? id;
  String? name;
  String? email;
  num? phone;
  dynamic image;
  dynamic dob;
  dynamic gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['refresh'] = refresh;
    map['access'] = access;
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['image'] = image;
    map['dob'] = dob;
    map['gender'] = gender;
    return map;
  }
}
