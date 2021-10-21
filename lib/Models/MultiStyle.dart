// To parse this JSON data, do
//
//     final multiStyle = multiStyleFromJson(jsonString);

import 'dart:convert';

List<MultiStyle> multiStyleFromJson(String str) => List<MultiStyle>.from(json.decode(str).map((x) => MultiStyle.fromJson(x)));

String multiStyleToJson(List<MultiStyle> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MultiStyle {
    MultiStyle({
        required this.srno,
        required this.title,
        required this.icon,
        required this.image,
        required this.type,
        required this.id,
    });

    int srno;
    String title;
    String icon;
    String image;
    String type;
    int id;

    factory MultiStyle.fromJson(Map<String, dynamic> json) => MultiStyle(
        srno: json["srno"],
        title: json["title"],
        icon: json["icon"],
        image: json["image"],
        type: json["type"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "srno": srno,
        "title": title,
        "icon": icon,
        "image": image,
        "type": type,
        "id": id,
    };
}
