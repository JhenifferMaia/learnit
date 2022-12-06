class About {
  late final String title;
  late final String text;
  late final String image;

  About({
    required this.title,
    required this.text,
    required this.image,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['text'] = text;
    data['image'] = image;

    return data;
  }

  About.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
    image = json['image'];
  }
}
