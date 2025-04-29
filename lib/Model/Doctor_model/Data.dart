import 'package:health_care/Model/Doctor_model/Timeslot.dart';

import 'dart:convert';

Doctor DoctorFromJson(String str) => Doctor.fromJson(json.decode(str));
String DoctorToJson(Doctor data) => json.encode(data.toJson());

class Doctor {
  Doctor({
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
    this.timeslots,
  });

  Doctor.fromJson(dynamic json) {
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
    if (json['timeslots'] != null) {
      timeslots = [];
      json['timeslots'].forEach((v) {
        timeslots?.add(Timeslots.fromJson(v));
      });
    }
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
  List<Timeslots>? timeslots;

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
    if (timeslots != null) {
      map['timeslots'] = timeslots?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
