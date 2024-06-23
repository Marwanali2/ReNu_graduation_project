class ReviewModel {
  int? id;
  String? value;
  String? comment;
  String? userName;
  String? companyName;
  String? createdAt;

  ReviewModel(
      {this.id,
      this.value,
      this.comment,
      this.userName,
      this.companyName,
      this.createdAt});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'];
    comment = json['comment'];
    userName = json['user_name'];
    companyName = json['company_name'];
    createdAt = json['created_at'];
  }
/* 
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['value'] = this.value;
    data['comment'] = this.comment;
    data['user_name'] = this.userName;
    data['company_name'] = this.companyName;
    data['created_at'] = this.createdAt;
    return data;
  } */
}
