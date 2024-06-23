class CompanyModel {
  int? id;
  String? name;
  String? image;
  String? description;
  int? price;
  double? lat;
  double? long;
  String? createdAt;
  String? updatedAt;

  CompanyModel(
      {this.id,
      this.name,
      this.image,
      this.description,
      this.price,
      this.lat,
      this.long,
      this.createdAt,
      this.updatedAt});

  CompanyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    lat = json['lat'];
    long = json['long'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
/* 
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price'] = this.price;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
 */
}
