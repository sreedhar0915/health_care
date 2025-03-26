class Tokens {
  Tokens({
    this.access,
    this.refresh,
  });

  Tokens.fromJson(dynamic json) {
    access = json['access'];
    refresh = json['refresh'];
  }
  String? access;
  String? refresh;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access'] = access;
    map['refresh'] = refresh;
    return map;
  }
}
