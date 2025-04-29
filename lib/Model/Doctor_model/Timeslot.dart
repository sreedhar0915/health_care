import 'dart:convert';

Timeslots timeslotsFromJson(String str) => Timeslots.fromJson(json.decode(str));
String timeslotsToJson(Timeslots data) => json.encode(data.toJson());

class Timeslots {
  Timeslots({
    this.id,
    this.slot,
    this.createdAt,
  });

  Timeslots.fromJson(dynamic json) {
    id = json['id'];
    slot = json['slot'];
    createdAt = json['created_at'];
  }
  num? id;
  String? slot;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slot'] = slot;
    map['created_at'] = createdAt;
    return map;
  }
}
