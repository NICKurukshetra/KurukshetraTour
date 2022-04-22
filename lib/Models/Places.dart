import 'dart:convert';

List<Places> placesFromJson(String str) =>
    List<Places>.from(json.decode(str).map((x) => Places.fromJson(x)));

String placesToJson(List<Places> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Places {
  Places({
    required this.title,
    required this.image,
    required this.icon,
    required this.cat,
    required this.descp,
    required this.timing,
    required this.map,
    required this.nearby,
    required this.link,
    required this.id,
  });

  String title;
  String image;
  String icon;
  String cat;
  String descp;
  String timing;
  String map;
  String nearby;
  String link;
  int id;

  factory Places.fromJson(Map<String, dynamic> json) => Places(
        title: json["title"],
        image: json["image"],
        icon: json["icon"],
        cat: json["cat"],
        descp: json["descp"],
        timing: json["timing"],
        map: json["map"],
        nearby: json["nearby"],
        link: json["link"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
        "icon": icon,
        "cat": cat,
        "descp": descp,
        "timing": timing,
        "map": map,
        "nearby": nearby,
        "link": link,
        "id": id,
      };
}
