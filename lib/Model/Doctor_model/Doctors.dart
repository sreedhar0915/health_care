import 'Data.dart';
import 'dart:convert';

GetAllDoctors getAllDoctorsFromJson(String str) =>
    GetAllDoctors.fromJson(json.decode(str));
String getAllDoctorsToJson(GetAllDoctors data) => json.encode(data.toJson());

class GetAllDoctors {
  GetAllDoctors({
    this.status,
    this.data,
  });

  GetAllDoctors.fromJson(dynamic json) {
    status = json['Status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Doctor.fromJson(v));
      });
    }
  }
  String? status;
  List<Doctor>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
