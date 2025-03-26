class Data {
  Data({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.image,
    this.dob,
    this.gender,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
    dob = json['dob'];
    gender = json['gender'];
  }
  int? id;
  String? name;
  int? phone;
  String? email;
  dynamic image;
  dynamic dob;
  dynamic gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['phone'] = phone;
    map['email'] = email;
    map['image'] = image;
    map['dob'] = dob;
    map['gender'] = gender;
    return map;
  }
}
