/*

class Data {
  List<Data>? data;

  Data({this.data});

  Data.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class SobaModel {
  int? sobaId;
  String? sobaName;
  String? sobaImage;
  String? sobaDate;

  SobaModel({this.sobaId, this.sobaName, this.sobaImage, this.sobaDate});

  SobaModel.fromJson(Map<String, dynamic> json) {
    sobaId = json["soba_id"];
    sobaName = json["soba_name"];
    sobaImage = json["soba_image"];
    sobaDate = json["soba_date"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["soba_id"] = sobaId;
    _data["soba_name"] = sobaName;
    _data["soba_image"] = sobaImage;
    _data["soba_date"] = sobaDate;
    return _data;
  }
}

*/

 class SobaModel {
  int? sobaId;
  String? sobaName;
  String? sobaImage;
  String? sobaDate;

  SobaModel(
      {this.sobaId,
        this.sobaName,
        this.sobaImage,
        this.sobaDate
      });

  SobaModel.fromJson(Map<String, dynamic> json) {
    sobaId = json['soba_id'];
    sobaName = json['soba_name'];
    sobaImage = json['soba_image'];
    sobaDate = json['soba_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['soba_id'] = this.sobaId;
    data['soba_name'] = this.sobaName;
    data['soba_image'] = this.sobaImage;
    data['soba_date'] = this.sobaDate;
    return data;
  }
}