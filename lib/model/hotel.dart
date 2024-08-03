class Hotel {
  String id;
  String name;
  String cover;
  List<String> images;
  int price;
  double rate;
  String description;
  List<Map<String, dynamic>> activities;
  String category;

  Hotel({
    required this.id,
    required this.name,
    required this.cover,
    required this.images,
    required this.price,
    required this.rate,
    required this.description,
    required this.activities,
    required this.category,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        id: json["id"],
        name: json["name"],
        cover: json["cover"],
        images: List<String>.from(json["images"].map((x) => x)),
        price: json["price"],
        rate: json["rate"]?.toDouble(),
        description: json["description"],
        activities: List<Map<String, dynamic>>.from(json["activities"]),
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "cover": cover,
        "images": List<dynamic>.from(images.map((x) => x)),
        "price": price,
        "rate": rate,
        "description": description,
        "activities": activities,
        "category": category,
      };
}

class Activity {
  String image;
  String name;

  Activity({
    required this.image,
    required this.name,
  });

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
      };
}
