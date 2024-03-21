class DashboardModel {
  String? title;
  List<SubList>? subList;


  DashboardModel({this.title, this.subList});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['subList'] != null) {
      subList = <SubList>[];
      json['subList'].forEach((v) {
        subList!.add(SubList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    if (subList != null) {
      data['subList'] = subList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubList {
  String? subTitle;
  String? icon;
  String? route;
  List<InnerList>? innerList;

  SubList({this.subTitle, this.innerList, this.icon,this.route});

  SubList.fromJson(Map<String, dynamic> json) {
    subTitle = json['subTitle'];
    icon = json['icon'];
    if (json['InnerList'] != null) {
      innerList = <InnerList>[];
      json['InnerList'].forEach((v) {
        innerList!.add(InnerList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['subTitle'] = subTitle;
    if (innerList != null) {
      data['InnerList'] = innerList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InnerList {
  String? menuSub;
  List<SubInnerList>? subInnerList;

  InnerList({this.menuSub, this.subInnerList});

  InnerList.fromJson(Map<String, dynamic> json) {
    menuSub = json['menuSub'];
    if (json['subInnerList'] != null) {
      subInnerList = <SubInnerList>[];
      json['subInnerList'].forEach((v) {
        subInnerList!.add(SubInnerList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['menuSub'] = menuSub;
    if (subInnerList != null) {
      data['subInnerList'] = subInnerList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubInnerList {
  String? subInnerListTitle;

  SubInnerList({this.subInnerListTitle});

  SubInnerList.fromJson(Map<String, dynamic> json) {
    subInnerListTitle = json['subInnerListTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['subInnerListTitle'] = subInnerListTitle;
    return data;
  }
}
