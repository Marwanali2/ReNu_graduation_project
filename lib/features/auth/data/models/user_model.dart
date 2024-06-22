class UserModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? status;
  String? image;
  int? code;
  String? codeExpiredAt;
  int? lat;
  int? long;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  String? token;
  String? points;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.status,
    this.image,
    this.code,
    this.codeExpiredAt,
    this.lat,
    this.long,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.token,
    this.points,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    status = json['status'];
    image = json['image'];
    code = json['code'];
    codeExpiredAt = json['code_expired_at'];
    lat = json['lat'];
    long = json['long'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    token = json['token'];
    points = json['points'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['name'] = name;
  //   data['email'] = email;
  //   data['phone'] = phone;
  //   data['status'] = status;
  //   data['image'] = image;
  //   data['code'] = code;
  //   data['code_expired_at'] = codeExpiredAt;
  //   data['lat'] = lat;
  //   data['long'] = long;
  //   data['email_verified_at'] = emailVerifiedAt;
  //   data['created_at'] = createdAt;
  //   data['updated_at'] = updatedAt;
  //   data['token'] = token;
  //   return data;
  // }
}
