import 'Data.dart';
import 'dart:convert';

Hospitalist hospitalistFromJson(String str) =>
    Hospitalist.fromJson(json.decode(str));
String hospitalistToJson(Hospitalist data) => json.encode(data.toJson());

class Hospitalist {
  Hospitalist({
    this.status,
    this.data,
  });

  Hospitalist.fromJson(dynamic json) {
    status = json['Status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  String? status;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
