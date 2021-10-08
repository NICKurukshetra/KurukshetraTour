
import 'dart:convert';

List<MainScreen> mainScreenFromJson(String str) => List<MainScreen>.from(json.decode(str).map((x) => MainScreen.fromJson(x)));

String mainScreenToJson(List<MainScreen> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MainScreen {
    MainScreen({
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

    factory MainScreen.fromJson(Map<String, dynamic> json) => MainScreen(
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
