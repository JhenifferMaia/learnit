class Cronograma {
  late final String title;
  late final int hour;
  late final int minute;
  late final String day;
  late final int color;

  Cronograma({
    required this.title,
    required this.hour,
    required this.minute,
    required this.day,
    required this.color,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['hour'] = hour;
    data['minute'] = minute;
    data['day'] = day;
    data['color'] = color.toString();

    return data;
  }

  Cronograma.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    hour = json['hour'];
    minute = json['minute'];
    day = json['day'];
    color = int.parse(json['color']);

  }

}
