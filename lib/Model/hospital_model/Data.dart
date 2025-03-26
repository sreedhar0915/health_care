import 'Doctors.dart';
import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    this.id,
    this.name,
    this.location,
    this.rating,
    this.about,
    this.image,
    this.doctors,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    rating = json['rating'];
    about = json['about'];
    image = json['image'];
    if (json['doctors'] != null) {
      doctors = [];
      json['doctors'].forEach((v) {
        doctors?.add(Doctors.fromJson(v));
      });
    }
  }
  num? id;
  String? name;
  String? location;
  num? rating;
  String? about;
  String? image;
  List<Doctors>? doctors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['location'] = location;
    map['rating'] = rating;
    map['about'] = about;
    map['image'] = image;
    if (doctors != null) {
      map['doctors'] = doctors?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
