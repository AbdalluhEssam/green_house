

class GategoriesModel {
  int? categoryId;
  String? categoryName;
  String? categoryImage;
  String? categoryDate;

  GategoriesModel(
      {this.categoryId,
        this.categoryName,
        this.categoryImage,
        this.categoryDate
      });

  GategoriesModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
    categoryDate = json['category_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['category_image'] = this.categoryImage;
    data['category_date'] = this.categoryDate;
    return data;
  }
}