import 'dart:convert';

Doctors doctorsFromJson(String str) => Doctors.fromJson(json.decode(str));
String doctorsToJson(Doctors data) => json.encode(data.toJson());

class Doctors {
  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.dob,
    this.gender,
    this.rating,
    this.department,
    this.about,
    this.experience,
    this.hospital,
    this.hospitalName,
  });

  Doctors.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    dob = json['dob'];
    gender = json['gender'];
    rating = json['rating'];
    department = json['department'];
    about = json['about'];
    experience = json['experience'];
    hospital = json['hospital'];
    hospitalName = json['hospital_name'];
  }
  num? id;
  String? name;
  String? email;
  num? phone;
  String? image;
  String? dob;
  String? gender;
  num? rating;
  String? department;
  String? about;
  num? experience;
  num? hospital;
  String? hospitalName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['image'] = image;
    map['dob'] = dob;
    map['gender'] = gender;
    map['rating'] = rating;
    map['department'] = department;
    map['about'] = about;
    map['experience'] = experience;
    map['hospital'] = hospital;
    map['hospital_name'] = hospitalName;
    return map;
  }
}
