import 'package:flutter/cupertino.dart';

class IconModel {
  IconData? icon;
  String? imageIcon;
  bool? isIcon;
//Icon Model
  IconModel({this.icon, this.imageIcon, this.isIcon});

  IconModel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    imageIcon = json['imageIcon'];
    isIcon = json["isIcon"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['icon'] = icon;
    data['imageIcon'] = imageIcon;
    data['isIcon'] = isIcon;
    return data;
  }
}
