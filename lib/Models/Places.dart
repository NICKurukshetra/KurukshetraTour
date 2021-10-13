// To parse this JSON data, do
//
//     final places = placesFromJson(jsonString);

import 'dart:convert';

List<Places> placesFromJson(String str) => List<Places>.from(json.decode(str).map((x) => Places.fromJson(x)));

String placesToJson(List<Places> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Places {
    Places({
        required this.title,
        required this.image,
        required this.cat,
        required this.id,
    });

    String title;
    String image;
    String cat;
    int id;

    factory Places.fromJson(Map<String, dynamic> json) => Places(
        title: json["title"],
        image: json["image"],
        cat: json["cat"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
        "cat": cat,
        "id": id,
    };
}
